Algoritmo bisiesto
	// Crear un Algoritmo que dado un a�o, nos diga si es bisiesto o no. Un a�o es 
    // bisiesto bajo las siguientes condiciones: Un a�o divisible por 4 es bisiesto y no
	// debe ser divisible entre 100. Si un a�o es divisible entre 100 y adem�s es
	// divisible entre 400, tambi�n resulta bisiesto.
	
	Escribir "Indicar el a�o"
	Leer year
	
	si year mod 4 = 0 y year mod 100 <> 0
		Escribir "El a�o ", year, " es bisiesto"
	SiNo
		si year mod 400 = 0 y year mod 100 = 0
			Escribir "El a�o ", year, " es bisiesto"
		SiNo
			Escribir "El a�o ", year, " No es bisiesto"
		FinSi
	FinSi
	
FinAlgoritmo
