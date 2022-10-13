Algoritmo bisiesto
	// Crear un Algoritmo que dado un año, nos diga si es bisiesto o no. Un año es 
    // bisiesto bajo las siguientes condiciones: Un año divisible por 4 es bisiesto y no
	// debe ser divisible entre 100. Si un año es divisible entre 100 y además es
	// divisible entre 400, también resulta bisiesto.
	
	Escribir "Indicar el año"
	Leer year
	
	si year mod 4 = 0 y year mod 100 <> 0
		Escribir "El año ", year, " es bisiesto"
	SiNo
		si year mod 400 = 0 y year mod 100 = 0
			Escribir "El año ", year, " es bisiesto"
		SiNo
			Escribir "El año ", year, " No es bisiesto"
		FinSi
	FinSi
	
FinAlgoritmo
