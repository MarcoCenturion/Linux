#!/bin/bash -x
#  ---------------------------------------------------
#  Script para capturar precios y tramos de vuelo (versión con parámetros)
#  ---------------------------------------------------
#  Marco Adrian Centurion
#  ---------------------------------------------------

# Configuración
TIMESTAMP=$(date +"%d-%m-%y_%H-%M")
DELAY=0.5 # Delay aumentado para mayor confiabilidad

# Mostrar ayuda si no hay parámetros o con -h/--help
show_help() {
    echo "Uso: $0 -c CANTIDAD -o ORIGEN -d DESTINO -i FECHA_IDA -r FECHA_REGRESO [-m MONEDA]"
    echo "Ejemplo: $0 -c 2 -o MEX -d JFK -i 10JUL -r 20JUL -m USD"
    echo "Moneda por defecto: USD (opciones: USD/ARS)"
    exit 0
}

# Procesar parámetros
while getopts ":c:o:d:i:r:m:h" opt; do
    case $opt in
        c) CAN="$OPTARG" ;;
        o) ORIGEN="$OPTARG" ;;
        d) DESTINO="$OPTARG" ;;
        i) IDA="$OPTARG" ;;
        r) REGRESO="$OPTARG" ;;
        m) MONEDA="$OPTARG" ;;
        h) show_help ;;
        \?) echo "Opción inválida: -$OPTARG" >&2; exit 1 ;;
        :) echo "La opción -$OPTARG requiere un argumento." >&2; exit 1 ;;
    esac
done

# Validar parámetros obligatorios
if [ -z "$CAN" ] || [ -z "$ORIGEN" ] || [ -z "$DESTINO" ] || [ -z "$IDA" ] || [ -z "$REGRESO" ]; then
    echo "Error: Faltan parámetros obligatorios" >&2
    show_help
    exit 1
fi

# Establecer moneda por defecto si no se especificó
MONEDA=${MONEDA:-"USD"}

# Construir nombre de archivo
OUTPUT_FILE="${CAN}${ORIGEN}${DESTINO}${IDA}_${DESTINO}${ORIGEN}${REGRESO}_${TIMESTAMP}.txt"

# Configuración de búsqueda
case "${MONEDA^^}" in
    "ARS") CURRENCY="FC-ARS" ;;
    "USD") CURRENCY="FC-USD" ;;
    *) CURRENCY="FC-USD"
       echo "Usando USD por defecto" ;;
esac

PARAMS="R,UP,U*OPERINT4,${CURRENCY}"

# Función mejorada para extraer los datos específicos
extract_specific_data() {
    # Extraer el bloque completo de información
    CONTENT=$(cat)
    
    # Extraer las líneas específicas que necesitamos
    echo "$CONTENT" | grep -E '^  TOTAL.*USD|^[0-9]+\s+\*LA.*E0/|^FARE FAMILY:FC[0-9]:' 
}

# Verificar dependencias
if ! command -v xdotool &> /dev/null || ! command -v xclip &> /dev/null; then
    echo "Instalando dependencias necesarias..."
    sudo pacman -S --noconfirm xdotool xclip || {
        echo "Error: No se pudieron instalar las dependencias" >&2
        exit 1
    }
fi

# 1. Enfocar ventana de Amadeus
WINDOW_ID=$(xdotool search --name "Amadeus Selling Platform Connect" | head -1)
[ -z "$WINDOW_ID" ] && { echo "Error: Ventana no encontrada" >&2; exit 1; }

xdotool windowactivate --sync "$WINDOW_ID"
sleep "$DELAY"

# 2. Limpiar pantalla completamente
xdotool key Escape; sleep "$DELAY"
xdotool key Escape; sleep "$DELAY"
xdotool type "IG"; sleep "$DELAY"  # Comando para limpiar pantalla en Amadeus
xdotool key Return; sleep "$DELAY"

# 3. Ejecutar comando FXD
{
    xdotool type "FXD$CAN$ORIGEN/"; sleep "$DELAY"
    xdotool type "D$IDA$DESTINO/"; sleep "$DELAY"
    xdotool type "D$REGRESO$ORIGEN/"; sleep "$DELAY"
    xdotool type "$PARAMS"; sleep "$DELAY"
    xdotool key Return; sleep 8  # Más tiempo para respuesta
}

# 4. Capturar contenido (5 intentos)
for attempt in {1..5}; do
    xdotool key ctrl+a; sleep "$DELAY"
    xdotool key ctrl+c; sleep "$DELAY"
    
    if CONTENT=$(xclip -o -selection clipboard 2>/dev/null || xsel -b 2>/dev/null); then
        SPECIFIC_DATA=$(echo "$CONTENT" | extract_specific_data)
        
        if [ -n "$SPECIFIC_DATA" ]; then
            # Formatear salida
            {
                echo "=== DETALLE COMPLETO DE VUELOS ==="
                echo "Ruta: $ORIGEN-$DESTINO $IDA / $DESTINO-$ORIGEN $REGRESO"
                echo "Pasajeros: $CAN | Moneda: ${MONEDA^^}"
                echo "------------------------"
                echo "$SPECIFIC_DATA"
                echo "------------------------"
                echo "Consulta: $(date)"
            } > "$OUTPUT_FILE"
            
            echo "✔ Consulta completada. Archivo: $OUTPUT_FILE"
            echo "--- Resultados ---"
            cat "$OUTPUT_FILE"
            exit 0
        fi
    fi
    
    echo "Intento $attempt fallido. Reintentando
