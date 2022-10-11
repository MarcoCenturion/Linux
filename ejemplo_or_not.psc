Algoritmo ejemplo_or_not
	
	Definir  var1,var2,var3 Como Logico
	var1 = 2*3 > 4 -1 // Verdadero
	var2 = 2 < 1 // Falso
	var3 = !(var1 O var2)
	Escribir "##############"
	Escribir var3
	// Si le quitamos los parentesis que sucede ?
	var3 = var1 O !var2
	Escribir "##############"
	Escribir var3
	
FinAlgoritmo
