#!/bin/bash
#  ---------------------------------------------------
#  Script para capturar precios y tramos de vuelo
#  ---------------------------------------------------
#  Marco Adrian Centurion
#  ---------------------------------------------------

# Configuración
TIMESTAMP=$(date +"%d-%m-%y_%H-%M")
DELAY=1.0 # Aumentamos el delay para mayor confiabilidad

# Verificar dependencias
if ! command -v xdotool &> /dev/null || ! command -v xclip &> /dev/null; then
    echo "Instalando dependencias necesarias..."
    sudo pacman -S --noconfirm xdotool xclip || {
        echo "Error: No se pudieron instalar las dependencias" >&2
        exit 1
    }
fi

# Pedir datos de entrada
read -p "🔹 Cantidad Pax: " CAN
read -p "🔹 Origen (ej: MEX hasta 3 separados por , COR,BUE,MDZ): " ORIGEN
read -p "🔹 Destino (ej: JFK, idem hasta 3): " DESTINO
read -p "🔹 Fecha Ida (ej. 10JUL)): " IDA
read -p "🔹 Fecha Regreso (ej. 20JUL)): " REGRESO
read -p "🔹 Vuelos Directos: " DIR

# Construir nombre de archivo
OUTPUT_FILE="${CAN}${ORIGEN}${DESTINO}${IDA}_${DESTINO}${ORIGEN}${REGRESO}_${TIMESTAMP}.txt"

# Configuración de búsqueda
read -p "🔹 Moneda (USD/ARS): " MONEDA
case "${MONEDA^^}" in
    "ARS") CURRENCY="FC-ARS" ;;
    "USD") CURRENCY="FC-USD" ;;
    *) CURRENCY="FC-USD"
       echo "Usando USD por defecto" ;;
esac

PARAMS="R,UP,U*OPERINT4,${CURRENCY}"

# Función mejorada para extraer precio y tramos
extract_data() {
    # Extraer el bloque completo de información
    CONTENT=$(cat)
    
    # 1. Extraer línea de TOTAL
    echo "$CONTENT" | grep -m 1 -E '^[[:space:]]+TOTAL[[:space:]]+[0-9]+[[:space:]]+[A-Z]{3}[[:space:]]+[0-9]+\.[0-9]{2}[[:space:]]+[0-9]+\.[0-9]{2}'
    
    # 2. Extraer tramos de vuelo (mejorado)
    echo "$CONTENT" | awk '/^[0-9]+\s+[A-Z]{2}\s+[0-9]{3,4}/{print; getline; print; getline; if ($0 ~ /^[[:space:]]+[A-Z]{2}/) print}'
}

# 1. Enfocar ventana de Amadeus
WINDOW_ID=$(xdotool search --name "Amadeus Selling Platform Connect" | head -1)
[ -z "$WINDOW_ID" ] && { echo "Error: Ventana no encontrada" >&2; exit 1; }

xdotool windowactivate --sync "$WINDOW_ID"
sleep "$DELAY"

# 2. Limpiar pantalla
xdotool key Escape; sleep "$DELAY"
xdotool key Escape; sleep "$DELAY"

# 3. Ejecutar comando FXD
{
    xdotool type "FXD$CAN$ORIGEN/"; sleep "$DELAY"
    xdotool type "D$IDA$DESTINO/"; sleep "$DELAY"
    xdotool type "D$REGRESO$ORIGEN/"; sleep "$DELAY"
    xdotool type "$PARAMS"; sleep "$DELAY"
    xdotool key Return; sleep 10  # Más tiempo para respuesta
}

# 4. Capturar contenido (5 intentos)
for attempt in {1..5}; do
    xdotool key ctrl+a; sleep "$DELAY"
    xdotool key ctrl+c; sleep "$DELAY"
    
    if CONTENT=$(xclip -o -selection clipboard 2>/dev/null || xsel -b 2>/dev/null); then
        FLIGHT_DATA=$(echo "$CONTENT" | extract_data)
        
        if [ -n "$FLIGHT_DATA" ]; then
            # Formatear salida
            {
                echo "=== DETALLE DE VUELOS ==="
                echo "Ruta: $ORIGEN-$DESTINO $IDA / $DESTINO-$ORIGEN $REGRESO"
                echo "Pasajeros: $CAN | Moneda: ${MONEDA^^}"
                echo "------------------------"
                echo "$FLIGHT_DATA"
                echo "------------------------"
                echo "Consulta: $(date)"
            } > "$OUTPUT_FILE"
            
            echo "✔ Consulta completada. Archivo: $OUTPUT_FILE"
            echo "--- Resultados ---"
            cat "$OUTPUT_FILE"
            exit 0
        fi
    fi
    
    echo "Intento $attempt fallido. Reintentando..."
    sleep 2
done

echo "✖ Error: No se capturaron datos de vuelos" >&2
exit 1
