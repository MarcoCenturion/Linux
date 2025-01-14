#!/bin/bash

# Archivos de entrada y salida
input_file="files2.txt"
output_file="files2_modificado.txt"

# Limpiar el archivo de salida antes de iniciar
> "$output_file"

# Procesar el archivo con awk
awk '
  BEGIN {
    print "Iniciando el procesamiento..."
  }

  # Detectar encabezado (líneas como "263 MYBEDS")
  /^[0-9]+\s+[^\t]+$/ {
    current_header = $0
    print "Encabezado detectado:", current_header
    next
  }

  # Ignorar el fin del bloque ("SUBTOTAL PROV.:")
  /SUBTOTAL PROV\.:/ {
    print "Fin de bloque detectado"
    next
  }

  # Agregar encabezado a las líneas del bloque
  current_header && /^[0-9]+/ {
    print "Procesando línea con encabezado:", current_header, $0
    print current_header "\t" $0 >> "'$output_file'"
  }

  END {
    print "Procesamiento completado."
  }
' "$input_file"

# Verificar si se generó el archivo de salida
if [[ -s "$output_file" ]]; then
  echo "Archivo modificado creado: '$output_file'"
else
  echo "Error: No se generó contenido en '$output_file'. Verifica el formato del archivo de entrada."
fi
