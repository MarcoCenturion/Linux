import re

# Leer el archivo original
with open('files2.csv', 'r', encoding='utf-8') as file:
    lines = file.readlines()

# Variable para guardar el encabezado actual
current_header = ""

# Lista para las líneas modificadas
modified_lines = []

# Expresión regular para detectar encabezados (número seguido de nombre)
header_regex = re.compile(r'^\d+\s+[^\t]+')

# Procesar cada línea
for line in lines:
    # Verificar si es un encabezado
    if header_regex.match(line):
        current_header = line.strip()  # Guardar el encabezado actual
    elif current_header:
        # Agregar el encabezado al principio de las líneas relevantes
        modified_lines.append(f"{current_header}\t{line.strip()}\n")

# Guardar las líneas modificadas en un nuevo archivo
with open('files2_modificado.csv', 'w', encoding='utf-8') as file:
    file.writelines(modified_lines)

print("Archivo modificado creado: 'archivo_modificado.txt'")
