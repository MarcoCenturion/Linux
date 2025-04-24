#!/bin/bash

# Configuración
OUTPUT_FILE="$HOME/disponibilidad_vuelos.txt"
WINDOW_TITLE="Amadeus Selling Platform Connect"
DELAY=1.0  # Delay aumentado para sistemas lentos

# Limpiar archivo anterior
> "$OUTPUT_FILE"

# Verificar e instalar dependencias
if ! command -v xdotool &> /dev/null || ! command -v xclip &> /dev/null; then
    echo "Instalando dependencias necesarias..."
    sudo pacman -S --noconfirm xdotool xclip || {
        echo "Error: No se pudieron instalar las dependencias" >&2
        exit 1
    }
fi

# Pedir datos de entrada
read -p "🔹 Cantidad Pax: " CAN
read -p "🔹 Origen (ej: MEX): " ORIGEN
read -p "🔹 Destino (ej: JFK): " DESTINO
read -p "* Fecha Ida (ej. 03JUL): " IDA 
read -p "* Fecha Regreso (ej. 12JUL): " REGRESO
sleep 2

# Función para capturar desde el portapapeles
capture_from_clipboard() {
    local max_attempts=5
    local attempt=0
    
    while [ $attempt -lt $max_attempts ]; do
        # Intentar con xclip primero
        if command -v xclip &> /dev/null; then
            CONTENT=$(xclip -o -selection clipboard 2>/dev/null)
            if [ -n "$CONTENT" ]; then
                echo "$CONTENT"
                return 0
            fi
        fi
        
        # Intentar con xsel como alternativa
        if command -v xsel &> /dev/null; then
            CONTENT=$(xsel -b 2>/dev/null)
            if [ -n "$CONTENT" ]; then
                echo "$CONTENT"
                return 0
            fi
        fi
        
        sleep 1
        ((attempt++))
    done
    
    return 2
}

# 1. Enfocar y preparar ventana de Amadeus
WINDOW_ID=$(xdotool search --name "$WINDOW_TITLE" | head -1)
if [ -z "$WINDOW_ID" ]; then
    echo "Error: No se encontró la ventana de Amadeus" >&2
    exit 1
fi

xdotool windowactivate --sync "$WINDOW_ID"
sleep "$DELAY"

# 2. Limpiar pantalla (asegurar estado inicial)
xdotool key Escape
sleep "$DELAY"
xdotool key Escape
sleep "$DELAY"

# 3. Ejecutar comando FXD con delays estratégicos
send_sequence() {
    xdotool type "FXD$CAN$ORIGEN/"
    sleep "$DELAY"
    xdotool type "D$IDA$DESTINO/"
    sleep "$DELAY"
    xdotool type "D$REGRESO$ORIGEN/"
    sleep "$DELAY"
    xdotool type "R,UP,U*OPERINT4,FC-USD"
    sleep "$DELAY"
    xdotool key Return
    sleep 8  # Tiempo crítico para respuesta
}

send_sequence
sleep 15

# 4. Capturar contenido con múltiples intentos
for attempt in {1..5}; do
    # Seleccionar y copiar contenido
    xdotool key ctrl+a
    sleep "$DELAY"
    xdotool key ctrl+c
    sleep "$DELAY"
    
    # Capturar desde portapapeles
    CONTENT=$(capture_from_clipboard)
    
    if [ -n "$CONTENT" ]; then
        # Filtrar contenido relevante
        FILTERED_CONTENT=$(echo "$CONTENT" | grep -E '[A-Z]{2}[0-9]{1,4}|FLIGHT|AVAILABLE|VUELO|DISPONIBLE')
        
        if [ -n "$FILTERED_CONTENT" ]; then
            # Formatear salida
            {
                echo "=== CONSULTA DISPONIBILIDAD ==="
                echo "Ruta: $ORIGEN-$DESTINO $IDA / $DESTINO-$ORIGEN $REGRESO"
                echo "Pasajeros: $CAN"
                echo "------------------------"
                echo "$FILTERED_CONTENT"
                echo "------------------------"
                echo "Consulta generada el: $(date)"
            } > "$OUTPUT_FILE"
            
            echo "✔ Consulta completada. Resultados en: $OUTPUT_FILE"
            echo "--- Extracto ---"
            head -n 20 "$OUTPUT_FILE"
            exit 0
        fi
    fi
    
    echo "Intento $attempt fallido. Reintentando..."
    sleep 2
done

# 5. Manejo de errores
echo "✖ Error: No se pudo capturar contenido válido" >&2
echo "Sugerencias:" >&2
echo "1. Verifica que puedas copiar manualmente (Ctrl+A, Ctrl+C) en Amadeus"
echo "2. Prueba ejecutar 'xclip -o -selection clipboard' después de copiar"
echo "3. Aumenta la variable DELAY en el script (actual: $DELAY)"
exit 1
