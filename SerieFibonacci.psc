Algoritmo SerieFibonacci
	// Escribir la serie de Fibonacci, una progresión donde se suman los números naturales, 
	// En donde el primer numero se suma al segundo, y el tercero se suma al segundo
	
	definir PriNum, SegNum, Resulta, contador, total Como Entero
	contador <- 1
	PrimNum <- 1
	SegNum <- 1
	Escribir "Indicar la cantidad de saltos de la serie"
	leer total
	
	Mientras contador <= total
		Resulta = PrimNum + SegNum
		Escribir "El numero de la Interacción ", contador, "er Es ", Resulta
		PrimNum = SegNum
		SegNum = Resulta
		contador = contador +1
		
	FinMientras
FinAlgoritmo
