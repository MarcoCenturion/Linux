// Realizar un algoritmo en el cual puedan ingresar numeros enteros hasta 5 veces
// El programa debe devolvernos cual fue el numero m�s grande de los 5 numeros ingresados
// Ademas debe indicarnos en que posici�n la encontr�. 
Algoritmo EJ29
	Definir contador Como Entero
	Definir numeroMayor Como Entero
	Definir posicionNumeroMayor Como Entero
	Definir numeroIngresado Como Entero
	contador <- 1
	Escribir 'Ingrese el ',contador,'� n�mero'
	Leer numeroIngresado
	numeroMayor <- numeroIngresado
	posicionNumeroMayor <- contador
	contador <- contador+1
	Mientras contador<=5 Hacer
		Escribir 'Ingrese el ',contador,'� n�mero'
		Leer numeroIngresado
		Si numeroIngresado>numeroMayor Entonces
			numeroMayor <- numeroIngresado
			posicionNumeroMayor <- contador
		FinSi
		contador <- contador+1
	FinMientras
	Escribir 'El n�mero m�s grande fue el ',numeroMayor
	Escribir 'Se encontr� en la ',posicionNumeroMayor,'� posici�n'
FinAlgoritmo
