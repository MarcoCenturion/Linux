Algoritmo VentaCds
	definir precio Como Entero
	definir gananciavendedor Como Entero
	Definir cantidad como entero
	Escribir "Cuantos CDs quiere"
	leer cantidad
	
	SI cantidad < 10
		Escribir "El precio total es de ",(cantidad*10)
		Escribir "La ganancia del vendedor es de ",((cantidad*10)*0.825)
	SiNo
		si cantidad < 99 y cantidad > 10
			Escribir "El precio total es de ",(cantidad*8)
			Escribir "La ganancia del vendedor es de ",((cantidad*8)*0.825)
		FinSi
		si cantidad < 499 y cantidad > 100
			Escribir "El precio total es de ",(cantidad*6)
			Escribir "La ganancia del vendedor es de ",((cantidad*6)*0.825)
		FinSi
	FinSi
	
	Escribir "Fin del algoritmo"
FinAlgoritmo
