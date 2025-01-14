#!/bin/bash 

# Archivo de entrada y salida
input_file="files2.csv"
output_file="files2_procesado.txt"

# Variables auxiliares
current_header="" # Guardará el encabezado actual
processing_block=false # Bandera para identificar si estamos dentro de un bloque

# Procesar el archivo línea por línea
{
  while IFS= read -r line; do
    # Detectar encabezado (líneas como "263 MYBEDS" o "328 BRICKELL BAY BEACH CLUB & SPA")
    if [[ $line =~ ^[0-9]+\s+[^\t]+$ ]]; then
      current_header="$line"
      processing_block=true
      continue
    fi

    # Detectar fin del bloque (líneas que contienen "SUBTOTAL PROV.:")
    if [[ $line =~ SUBTOTAL\ PROV\.\: ]]; then
      processing_block=false
      continue
    fi

    # Agregar encabezado a las líneas relevantes (líneas que empiezan con números como "57097")
    if $processing_block && [[ $line =~ ^[0-9]+ ]]; then
      echo -e "$current_header\t$line" >> "$output_file"
    fi
  done
} < "$input_file"

echo "Archivo modificado creado: '$output_file'"
