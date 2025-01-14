#!/bin/bash

# Archivo de entrada y salida
input_file="files"
output_file="archivo_modificado.txt"

# Inicializar variables
current_header=""

# Procesar el archivo línea por línea
awk '
    /^[0-9]+\s+[^\t]+/ { 
        # Si la línea es un encabezado, actualizar el encabezado actual
        current_header = $0; 
        next; 
    }
    current_header != "" { 
        # Si no es un encabezado, agregarlo al inicio de la línea
        print current_header "\t" $0; 
    }
' "$input_file" > "$output_file"

echo "Archivo modificado creado: '$output_file'"
