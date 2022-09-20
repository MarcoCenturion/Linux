import sys

sys.stdin.readline()
print(70*"-","\nEjercicio nro 1")
# Suma los impares de 0 a 26
suma=0
for i in range(26):
    if i % 2==1:
        suma = suma + i
        print(suma, i)

print(suma)

sys.stdin.readline()
print(70*"-","\nEjercicio nro 2")
archivo = open("/home/marco/ciclo_2020.txt")
for word in archivo:
    print(word)

print(70*"-","\nejercicio nro 3")
sys.stdin.readline()

primero = input("Indicar un numero ")
segundo = input("indicar un segundo numero ")
primero = int(primero)
segundo = int(segundo)



print("La suma de ambos es: ",primero+segundo)
print("La resta de ambos es: ",primero-segundo)
print("La multiplicación de ambos es: ",primero*segundo)
print("La división de ambos es: ",primero/segundo)
print("La potencia del primero por el segundo es: ",primero**segundo)
print("La modulo del primero por el segundo es: ",primero%segundo)

print(70*"-","\nEjercicio nro 4")
sys.stdin.readline()

# Imprimir en pantalla los número decrecientes de 1 a 100 de a 4

for i in range(200):
    if i % 15  ==  0:
        print(i)



sys.stdin.readline()
print(70*"-","\nEjercicio nro 5")
# Suma los impares de 0 a 26
suma=0
for i in range(20):
    if i % 2==0:
        suma += 1
        print("Suma parcial",suma,"incremento",i)
        print("la suma final es",suma)


sys.stdin.readline()
print(70*"-","\nEjercicio nro 6")
#La sucesión de Fibonacci

primero = 1
segundo = 1
tercero = 0
salto = 0 

while tercero < 10:
    tercero = primero + segundo
    salto = salto+1
    print("Primero ",primero,"Segundo ",segundo,"Tercero ",tercero,"Salto ",salto)
    primero = segundo
    segundo = tercero
    sys.stdin.readline()

print(70*"-","\nEjercicio nro 7")
# Suma los impares de 0 a 26
resta=0
for i in range(4):
    if i % 2==1:
        resta -= 1
        print("Suma parcial",resta,"incremento",i)
        print("la suma final es",resta)
