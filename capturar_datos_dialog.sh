#!/bin/bash 
# capturar_datos_dialog.sh
#
#

respuesta=$(dialog --backtitle "www.thconsultora.com.ar" \
	--title "Cotizar una ruta aérea"  \
	--separate-widget $"\n" \
	--form "COTIZADOR" \
	60 30 0 \
	"Fee :     " 1 1 "$fee" 1 10 20 0 \
	"USD Blue: " 2 1 "$blue" 2 10 20 0 \
	"Ttl  MIA: " 3 1 "$mia" 3 10 20 0 \
	3>&1 1>&2 2>&3 3>&-)
	fee=$(echo "$respuesta" | sed -n 1p)
	blue=$(echo "$respuesta" | sed -n 2p)
	mia=$(echo "$respuesta" | sed -n 3p)
	echo "Fee: $fee"
	echo "Blue: $blue"
	echo "Mia: $mia"
