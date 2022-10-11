Algoritmo funciones_cadenas
	Definir x Como Caracter
	x="Hola Mundo"
	// Longitud (x) retorna la cantidad de caracteres de la cadena x.
	Escribir Longitud(x)
	// Concatenar(cad1,cad2) retorna una sola cadena con la union de ambas
	Escribir Concatenar(x," lindo")
	// Mayusculas(x) regresa la cadena en mayusculas
	Escribir Mayusculas(x)
	// Minusculas(x) regresa la cadena en minusculas
	Escribir Minusculas(x)
	// SubCadena(x,desde,hasta) extrae una cadena de x que 
	// comienza en desde y termina en hasta
	Escribir SubCadena(x,2,6)
	// ConvertirANumero(x) convierte a numero entero o real una 
	// cadena que contenga valores numericos
	Escribir ConvertirANumero("34.3")
	// ConvertirATexto(x) siendo x un numero, lo devuelve como cadena de texto
	Escribir ConvertirATexto(33.4)
FinAlgoritmo
