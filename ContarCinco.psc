Algoritmo ContarCinco
	Escribir 'Ingresar 1 a 10'
	Leer Num_ent	
	contad <- 1
	Mientras Num_ent>=1 Y Num_ent<=10 Hacer
		Mientras contad<=10 Hacer
			Escribir Num_ent,' Por ',contad,' Es igual a ',Num_ent*contad
			contad <- contad+1
		FinMientras
	FinMientras
	Escribir 'Numero fuera de rango'
FinAlgoritmo
