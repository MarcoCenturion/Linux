# contador de palabras
# Solo una prueba para una foto

palabras = open('CondicionesGenerales.txt')
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
for val, key in lista[:20] :
    print(key, val)
