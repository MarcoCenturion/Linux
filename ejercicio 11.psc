//Algoritmo que nos diga si una persona puede acceder a cursar un ciclo formativo de grado superior o no. 
//Para acceder a un grado superior, si se tiene un titulo de bachiller, en caso de no tenerlo, 
//se puede acceder si hemos superado una prueba de acceso.

Proceso ejercicio_11
	Escribir "¿Tienes el titulo de bachiller?"
	Leer bachiller
	si (bachiller="si") Entonces
		Escribir "Puedes acceder al grado superior"
	Sino
		Escribir "¿Tienes la prueba de acceso superada?"
		Leer prueba_acceso
		si (prueba_acceso="si") Entonces
			Escribir "Puedes acceder al grado superior"
		Sino
			Escribir "No puedes acceder a un grado superior"
		FinSi
	FinSi
FinProceso
