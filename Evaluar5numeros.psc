Algoritmo Evaluar5numeros
	definir NumMayor, contador, cantidadnumeros, numeroing, posic como enteros
	contador <- 1
	NumMayor <- 0
	posic <- 1
	mientras contador <= 5
		Escribir "Indiar un n�mero entero "
		leer numeroing
		si numeroing > NumMayor
			NumMayor <- numeroing
			posic = contador
		FinSi
		contador = contador + 1 
		
	FinMientras
	Escribir "El numero mayor es ", NumMayor, " y la posici�n en la que se escribi� es la posici�n ",posic
	Escribir "FINAL"
	
FinAlgoritmo
