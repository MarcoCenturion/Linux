#!/bin/bash
# nueva_prueba_formulario_dialog.sh
#
#

respuesta=$(dialog --backtitle "Turismo y Hotelería Consultora" \
                   --title "Cotizador de PNR's"                  \
                   --separate-widget $"\n"               \
                   --form  "cotizador"         \
                   40 50 0                                 \
                   "Fee:        "   1 1 "$fee"   1 10 20 0 \
                   "Dólar Blue: " 2 1 "$blue" 2 10 20 0 \
                   "Emision Mia:"    3 1 "$mia"     3 10 20 0 \
                   3>&1 1>&2 2>&3 3>&-)
fee=$(echo "$respuesta" | sed -n 1p)
blue=$(echo "$respuesta" | sed -n 2p)
mia=$(echo "$respuesta" | sed -n 3p)
echo "Fee       : $fee"
echo "Blue      : $blue"
echo "Emite MIA : $mia"
