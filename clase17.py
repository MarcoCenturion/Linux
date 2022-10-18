listado_numeros = []
numeros = input("Indicar los numeros a ingresar ")

contar = 0
while numeros != 0:
    listado_numeros.append(numeros)
    
print(listado_numeros)

filtro = filter(lambda numero : (numero % 2) == 0,listado_numeros)

print(list(filtro))
