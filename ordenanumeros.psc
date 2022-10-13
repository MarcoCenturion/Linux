Algoritmo MasGrande
	Definir a, b, c como entero
	Escribir "Ingresar el primer numero "
	leer a
	Escribir "Ingresar el segundo numero "
	leer b
	Escribir "Ingresar el tercer numero "
	leer c
	
	Si a > b y b > c Entonces
		Escribir "El orden es abc ", a, b, c
	fin si
	Si a > c y c > b Entonces
		Escribir "El orden es acb ", a, c, b
	fin si
	si b > a y a > c
		Escribir "El orden es bac ", b, a, c 
	FinSi
	Si b > c y c > a Entonces
		Escribir "El orden es bca ", b, c, a
	fin si
	si c > a y a > b
		Escribir "El orden es cab ", c, a, b
	Fin si
	si c > b y b > a
		Escribir "El orden es cba ", c, b, a
	Fin si
FinAlgoritmo
