# contador de palabras
# Solo una prueba para una foto

# ingrear el archivo

archivo = input('ingresar el arcivo a leer: ')

palabras = open(archivo)
print(palabras)
contar = dict()
print(contar)

for lines in palabras:
    print(lines)
    palabra = lines.split()
    for pala in palabra:
        contar[pala] = contar.get(pala,0) + 1
        
lista = list()

for key, val in contar.items():
    superior = (key,val)
    lista.append(superior)
    
lista = sorted(lista, reverse=True)
for val, key in lista[:10] :
    print(key, val)
