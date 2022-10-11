// Algoritmo que lea números enteros hasta teclear 0, y nos muestre el máximo, el mínimo y la media de todos ellos. 
// Piensa como debemos inicializar las variables.
Algoritmo ejercicio_17
	Leer num
	// maximo y el minimo se inician con el numero que
	// insertemos para que lo podamos modificar
	// durante el programa
	minimo <- num
	maximo <- num
	suma <- 0
	Mientras (num<>0) Hacer
		Si (num>maximo) Entonces
			maximo <- num
		FinSi
		Si (num<minimo) Entonces
			minimo <- num
		FinSi
		suma <- suma+num
		contador <- contador+1
		Leer num
	FinMientras
	media <- suma/(contador)
	// escrbimos los resultados
	Escribir 'El maximo es ',maximo
	Escribir 'El minimo es ',minimo
	Escribir 'La media es ',media
FinAlgoritmo
