Algoritmo PiedraPapelTijeras
	Escribir "Elegir opcion 1) piedra 2) papel 3) tijeras"
	leer opcionusuario
	opcioncomputadora <- Aleatorio(1,3)
	si opcioncomputadora == opcionusuario Entonces
		
		Escribir "Empate"
	SiNo
		si opcionusuario == 1 Entonces // piedra
			si opcioncomputadora == 2 Entonces // papel
				Escribir "Gana computadora, papel mata a piedra"
			SiNo
				Escribir "Ganaste, piedra mata a tijeras"
			FinSi
		FinSi
		si opcionusuario == 2 Entonces // papel
			si opcioncomputadora == 1 Entonces // piedra
				Escribir "Ganaste, papel mata a piedra"
			SiNo
				Escribir "Perdiste, tijeras mata a papel"
			FinSi
		finsi	
		si opcionusuario == 3 Entonces // tijeras
			si opcioncomputadora == 1 Entonces // piedra
				escribir "Perdiste, Piedra mata a tijeras"
			SiNo
				Escribir "Ganaste, tijeras mata a papel"
			FinSi
		FinSi	
	FinSi
	Escribir "--------------------------"
	Escribir "  ** Fin del programa **  "
	Escribir "-------------------------"
FinAlgoritmo
