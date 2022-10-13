Algoritmo Heladeria
	Definir empleado como entero
	definir dias como entero
	Escribir "Elegir empleado a calcular" 
	Escribir "1) cajero 2) servidor 3) preparador de mescla 4) Mantenimiento"
	Leer empleado
	Escribir "Cuantos días trabajo en la semana"
	Leer dias
	
	Segun empleado Hacer
		opcion_1:
			Escribir "Pagar al Cajero $", dias*56
		opcion_2:
			Escribir "Pagar al Servidor $",dias*64
		opcion_3:
			Escribir "Pagar al preparador de mezcla $",dias*80
		De Otro Modo:
			Escribir "Pagar al Mantenimiento $", dias*48
	Fin Segun
	
FinAlgoritmo
