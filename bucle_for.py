file = open('cias_areas.txt')

lista = []
for line in file:
    line = line.strip()
    lista.append(line)
    print(line)
    print('La lista tiene '+str(len(lista))+' Cias aereas')

print(lista)

counts = dict()
for name in lista:
    counts[name] = counts.get(name,0) +1
    '''    if name not in counts:
        counts[name] = 1
    else:
        counts[name] = counts[name] + 1'''


print('\n------------------\n')
print(counts)

file.close()
