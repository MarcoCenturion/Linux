import sys

# leer un archivo de texto linea por línea
with open("/home/marco/Itinerario_paola.txt") as archivo:
    while True:
        sys.stdin.readline()
        cont = 0
        for linea in archivo:
            print(linea)
            palabra = linea.split()
            for pala in palabra:
                print(cont,pala)
                cont += 1
