Algoritmo Evaluar5numeros
	definir NumMayor, contador, cantidadnumeros, numeroing, posic como enteros
	contador <- 1
	NumMayor <- 0
	posic <- 1
	mientras contador <= 5
		Escribir "Indiar un número entero "
		leer numeroing
		si numeroing > NumMayor
			NumMayor <- numeroing
			posic = contador
		FinSi
		contador = contador + 1 
		
	FinMientras
	Escribir "El numero mayor es ", NumMayor, " y la posición en la que se escribió es la posición ",posic
	Escribir "FINAL"
	
FinAlgoritmo
