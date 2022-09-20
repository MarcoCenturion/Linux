import sys

archivo = open("/home/marco/ciclo_2020.txt")

for renglon in archivo: 
    print(renglon)
    for palabra in renglon:
        print(type(palabra))
        print(type(renglon))

    sys.stdin.readline()

