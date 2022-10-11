Algoritmo NotasAlumnos
	Definir nota Como Entero
	
	ciclo <- 0
	prom <- 0
	Mientras ciclo < 5 Hacer
		Escribir "Ingresar cinco notas de los alumnos"
		leer nota
		ciclo = ciclo + 1
		prom = prom + nota
	Fin Mientras
	Escribir "Las notas fueron ", prom/5
FinAlgoritmo
