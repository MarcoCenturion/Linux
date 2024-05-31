#!/bin/sh

function logWarn() {
	START='\033[01;33m'
	END='\033[00;00m'
	MESSAGE=${@:-""}
	echo -e "${START}${MESSAGE}${END}"
}

function logInfo() {
	START='\033[01;32m'
	END='\033[00;00m'
	MESSAGE=${@:-""}
	echo -e "${START}${MESSAGE}${END}"
}

function logError() {
	START='\033[01;31m'
	END='\033[00;00m'
	MESSAGE=${@:-""}
	echo -e "${START}${MESSAGE}${END}"
}

function log() {
        MESSAGE=${@:-""}
        echo -e "${MESSAGE}"
}

log "Ejemplo de Menu de Opciones."

while true; do
    read -p "Seleccione una opcion de 1 a 5 ?" op
    case $op in
        [1]* ) logInfo "Opción Seleccionada 1 !"; break;;
        [2]* ) logInfo "Opción Seleccionada 2 !"; break;;
        [3]* ) logInfo "Opción Seleccionada 3 !"; break;;
        [4]* ) logInfo "Opción Seleccionada 4 !"; break;;
        [5]* ) logInfo "Opción Seleccionada 5 !"; break;;        
        * ) logWarn "Seleccione una Opción de 1 a 5.";;
    esac
done

log ""

while true; do
    read -p "Desea Continuar S/N?" yn
    case $yn in
        [Ss]* ) logInfo "Continua la Ejecución. !"; break;;
        [Nn]* ) logError "Finaliza la Ejecución. !"; exit;;
        * ) logWarn "Seleccione Si o No.";;
    esac
done

log ""
log "Completo Correctamente..."
