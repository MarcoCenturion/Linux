import sys

# leer un archivo de texto linea por línea
arc = input("indicar el archivo a leer: ")
archivo = open(arc)
sys.stdin.readline()
cont = 0
for linea in archivo:
    print(linea)
    palabra = linea.split()
    for pala in palabra:
        print(cont,pala)
        cont += 1
