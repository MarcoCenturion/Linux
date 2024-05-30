#!/bin/bash
#
# Aprendiendo a usar sed, cat, awk, cut
# (c) Marco Centurion
# Argumento $1 es el archivo de texto con el PNR + mascara
# $2 Markup en USD
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
}
clear
# Ingresamos el valor del dolar y el Markup
#echo -ne "\n${greenColour}Ingresar el valor del dolarblue: ${endColour}" 
#read dolarblue
#renglon
echo -ne "\n${greenColour}Esta cotización es del día: $now${endColour}"
echo -ne "\n${greenColour}El Markup ingresado es: $2\n ${endColour}"
# echo -ne "\n${greenColour}Indicar el Markup por tkt: ${endColour}" 
# read markup
# renglon

# Parseamos el documento txt en cada una de las variables que 
# utilizaremos para hacer la cotización
#
ltd=$(cat $1 | grep Purchase | awk -F ' ' '{print $7}')
tramos=$(cat $1 | grep -e '^ . ' | cut -c 4-9,11-17,19-25,31-37 | awk '{print $0}')
tarifa=$(cat $1 | grep -e :USD | cut -d '.' -f 1 | awk -F: '{print $2}' | sed 's/USD//g' )
endos=$(cat $1 | grep -e 'REF')

# Imprimimos en pantalla la cotización
renglon
echo -en "\n${blueColour}\nFecha de Cotización Emitida: ${endColour}"
echo -e "${redColour}$now${endColour}"
echo -en "\n${blueColour}Ultimo día para emitir: ${endColour}"
echo -e "${redColour}$ltd${endColour}"
echo -e "\n${blueColour}Cía|Vuelo|Fecha|Ruta|Sale|Llega${endColour}"
echo -e "${redColour}$tramos${endColour}"
echo -en "\n${blueColour}Devoluciones y cambios: ${endColour}\n"
echo -e "${redColour}$endos${endColour}"
echo -en "\n${blueColour}Tarifa en Pesos Total por pasajero: USD ${endColour}"
echo -e "${redColour}$(($tarifa+$2))${endColour}"

renglon 
exit 1

# if [[ -f $1 ]]  # Validamos que el usuario agregue un argumento, el archivo .txt con los datos del PNR
# then
#	echo "Leyendo el archivo "$1
#	sleep 1 

# Arrancamos las funciones

# else
# 	echo "El archivo" $1 "no fue encontrado" # Mensaje cuando no pasamos el archivo como parámetro.
# fi

