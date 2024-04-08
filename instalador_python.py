# Pasos para convertir un archivos .py en ejecutable de windows
# inciar una instanacia virtual con virtualenvm
# activar el entorno virtual venv/bin/activate
# Upgrade pip 
# python -m pip install --upgrade pip
# instalar todas las librerias necesarias + PyInstaller
# pip free > requirements.txt
# crear el archivo python con este contenido

import PyInstaller.__main__

PyInstaller.__main__.run([
    'cotizador_amadeus.py',
    '--onefile',
    '--console', # or --windowed if you don´t need windows command line
    '--name',
    'Cotizador_Amadeus',
    '--clean'
])

# python instalador_python.py 


