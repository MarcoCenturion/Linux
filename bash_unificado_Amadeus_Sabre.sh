#!/bin/bash 
#
# Aprendiendo a usar sed, cat, awk, cut
# (c) Marco Centurion
# Argumento $1 es el archivo de texto con el PNR + mascara
# $2 Markup en USD
# SI el PNR inicia con WP elegirá el camino de Sabre 
# Si en cambio inicia con FX elegirá el camino de Amadeus
# --------------------------------------------------------

# Grabamos los colores de Savitar
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"
blueColour="\e[0;34m\033[1m"
redColour="\e[0;31m\033[1m"


# Establecemos la fecha en la variable now
now=$(date +"%d-%m-%y  %H:%M")

function renglon(){
        printf %80s |tr " " "="
	echo "\n"
}
clear

t=$1
mu=$2

function sabre(){
ltd=$(cat "$t" | grep Purchase | awk -F ' ' '{print $7}')
tramos=$(cat "$t" | grep -e '^ . ' | cut -c 4-9,11-17,19-25,31-42 | awk '{print $0}')
tarifa=$(cat "$t" | grep -e :USD | cut -d '.' -f 1 | awk -F: '{print $2}' | sed 's/USD//g' )
endos=$(cat "$t" | grep -e 'REF')
}

function amadeus(){
ltd=$(cat "$t" | grep LAST | awk -F '-' '{print $1}')
tarifa_usd=$(cat "$t" | grep USD | awk 'NR == 1 {print $2}')
equipaje=$(cat "$t" | grep -E '2P|1P|0P'|awk '{print $10}')
tramos=$(cat "$t" | grep -e '^  [1-9]'|cut -c 6-12,15-20,23-29,35-43 | awk '{print $0}')
tarifa=$(cat "$t" | grep -e '^USD' | tail -1 | awk '{print $2}' | cut -d '.' -f 1 )
endos=$(cat "$t" | grep -e 'REF')
}

function dibujar(){
echo -en "\n${blueColour}\nFecha de Cotización Emitida: ${endColour}"
echo -e "${redColour}$now${endColour}"
echo -en "\n${blueColour}Ultimo día para emitir: ${endColour}"
echo -e "${redColour}$ltd${endColour}"
echo -e "\n${blueColour}Cía|Vuelo|Fecha|Ruta|Sale|Llega${endColour}"
echo -e "${redColour}$tramos${endColour}"
echo -en "\n${blueColour}Devoluciones y cambios: ${endColour}\n"
echo -e "${redColour}$endos${endColour}"
echo -en "\n${blueColour}Tarifa en Pesos Total por pasajero: USD ${endColour}"
echo -e "${redColour}$(($tarifa+$mu))${endColour}"
}

echo -ne "\n${greenColour}Esta cotización es del día: $now${endColour}"
echo -ne "\n${greenColour}El Markup ingresado es: $2\n ${endColour}"

gds=$(cat $1 | awk 'NR == 1 {print $1}' | cut -c 1,2)

if [[ $(echo "$gds") = WP ]]; then 
echo -en "${blueColour}Cotización Sabre: ${endColour}"
echo -e "${redColour}$endos${endColour}"
	sabre 
	dibujar
elif [[ $(echo "$gds") = FX ]]; then 
echo -en "${blueColour}Cotización Amadeus: ${endColour}"
echo -e "${redColour}$endos${endColour}"
	amadeus
	dibujar
else
echo -ne "No se ingresó ningún parámetro".
fi


exit 1