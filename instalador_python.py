import PyInstaller.__main__

PyInstaller.__main__.run([
    'cotizador_amadeus.py',
    '--onefile',
    '--console', # or --windowed if you don´t need windows command line
    '--name',
    'Cotizador_Amadeus',
    '--clean'
])
