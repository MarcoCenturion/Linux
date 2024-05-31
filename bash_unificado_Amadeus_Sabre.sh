#!/bin/bash 
#
# Ejercicio utilizando cat, awk, sed, tr, cut, grep
# (c) Marco Adrián Centurion
# Argumento $1 es el archivo de texto con el PNR+mascara
# Argumento $2 es el Markup en USD
# Si el PNR inicia con WP elegirá el camino de Sabre 
# Si en cambio inicia con FX elegirá el camino de Amadeus
# Funciones: Búsqueda de tramos y tarifa distintas para 
# Amadeus y Dólares
# --------------------------------------------------------

# Utilizamos los colores de Savitar
greenColour="\e[7;32m\033[1m"
endColour="\033[0m\e[0m"
yellowColour="\e[1;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"
blueColour="\e[0;34m\033[1m"
redColour="\e[7;31m\033[1m"

# Establecemos la fecha en la variable now
now=$(date +"%d-%m-%y  %H:%M")

function renglon(){
        # Armamos un renglon
	printf %80s |tr " " "="
	echo "\n"
}
clear

t=$1
mu=$2

function sabre(){
# búsqueda de los datos en el archivo.txt de Sabre
ltd=$(cat "$t" | grep Purchase | awk -F ' ' '{print $7}')
tramos=$(cat "$t" | grep -e '^ . ' | cut -c 4-9,11-17,19-25,31-42 | awk '{print $0}')
tarifa=$(cat "$t" | grep -e :USD | cut -d '.' -f 1 | awk -F: '{print $2}' | sed 's/USD//g' )
endos=$(cat "$t" | grep -e 'REF')
}

function amadeus(){
# búsqueda de los datos en el archivo.txt de Amadeus
ltd=$(cat "$t" | grep LAST | awk -F '-' '{print $1}')
tarifa_usd=$(cat "$t" | grep USD | awk 'NR == 1 {print $2}')
equipaje=$(cat "$t" | grep -E '2P|1P|0P'|awk '{print $10}')
tramos=$(cat "$t" | grep -e '^  [1-9]'|cut -c 6-12,15-20,23-29,35-43 | awk '{print $0}')
tarifa=$(cat "$t" | grep -e '^USD' | tail -1 | awk '{print $2}' | cut -d '.' -f 1 )
endos=$(cat "$t" | grep -e 'REF')
}

function dibujar(){
# Escribimos los datos en pantalla
echo -en "\n${blueColour}\nFecha de Cotización Emitida: ${endColour}"
echo -e "${redColour}$now${endColour}"
echo -en "\n${blueColour}Ultimo día para emitir: ${endColour}"
echo -e "${redColour}$ltd${endColour}"
echo -e "\n${blueColour}Cía|Vuelo|Fecha|Ruta|Sale|Llega${endColour}"
echo -e "${redColour}$tramos${endColour}"
echo -e "\n${blueColour}Equipaje Permitido por tramo${endColour}"
echo -e "${redColour}$equipaje${endColour}"
echo -en "\n${blueColour}Devoluciones y cambios: ${endColour}\n"
echo -e "${redColour}$endos${endColour}"
echo -en "\n${blueColour}Tarifa en Pesos Total por pasajero: USD ${endColour}"
echo -e "${redColour}$(($tarifa+$mu))${endColour}"
}

echo -ne "\n${greenColour}Esta cotización es del día: $now${endColour}"
echo -ne "\n${greenColour}El Markup ingresado es: $2\n ${endColour}"

# Decidimos si el archivo es de Sabre o Amadeus dependiendo de los 2 primeros caracteres
gds=$(cat $1 | awk 'NR == 1 {print $1}' | cut -c 1,2)
if [[ $(echo "$gds") = WP ]]; then 
echo -en "${blueColour}Cotización Sabre: ${endColour}"
echo -e "${redColour}$endos${endColour}"
        renglon
	sabre 
	dibujar
elif [[ $(echo "$gds") = FX ]]; then 
echo -en "${blueColour}Cotización Amadeus: ${endColour}"
echo -e "${redColour}$endos${endColour}"
        renglon
        amadeus
	dibujar
else
echo -ne "No se ingresó ningún parámetro".
fi

exit 1
