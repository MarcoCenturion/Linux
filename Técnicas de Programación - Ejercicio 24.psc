// Realizar un algoritmo que ingrese un n�mero del 1 al 10 y nos devuelva la tabla de multiplicar 
//Ej , si el numero ingresado es 6 que nos devuelva la tabla del 6.
//Pero si el n�mero no est� en ese rango del 1  al 10 que nos devuelva que es un error.

Algoritmo EJ24
	Definir num Como Entero;
	Definir contador Como Entero;
	Escribir "Ingrese un n�mero entre 1 y 10";
	Leer num;
	contador = 1;
	Si num < 1 | num > 10 Entonces
		Escribir "N�mero incorrecto.";
	Sino
		Mientras contador <= 10 Hacer
			Escribir num," x ",contador," = ",(num*contador);
			contador = contador + 1;
		FinMientras
	FinSi
FinAlgoritmo
