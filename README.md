# Linux
Que es Linux

## El Kernel.

Linux Torval, de  21 años en abril de 1991, empezó a escribir el primer kernel de Linux, intentando hacer un Minix (un Unix pequeño) desde cero, escribe su intención en un foro y pronto se suman muchos entusiastas.  

El 14 de marzo de 1994, salió Linux 1.0.0, que constaba de 176.250 líneas de código

Hoy tiene 25.5 M de líneas de código.

Es la pieza de código que controla periféricos, controla los recursos, alrededor de esto se montan los otros programas, con una declaración de principios.  Cada programa hace una sola cosa, pero la hace bien y de documenta todo.

## En principio fue la línea de comandos.

El escritor de Ciencia Ficción Neal Stephenson escribió este ensayo interesante, 
[Link para En Principio fue la línea de Comandos](https://www.holaebook.com/book/neal-stephenson-en-el-principio-fue-la-linea-de-comandos.html)

La metáfora de la tienda de Deportivos italianos, frente a la de bicicletas con motor y la comunidad de hippies que arma tanques de última generación, que tienen la estética de los deportivos italianos (de hecho ultimamente los deportivos copian a Linux), gastan menos que la bicicleta y son **gratis**.

## Porqué es obligatorio saber comandos bash

Porque muchos servers a los que accedemos, corren **apache**, o **nginx**, y entramos por SSH a hacer cualquier tipo de tareas administrativas o de gestión.  Ver logs puede ser muy tedioso.  Con un par de combinaciones de comandos se simplifica mucho.

Todas esas tareas vamos a tener que hacerlas desde la línea de comando.

## stderr stdin stdout pipe y atajos de teclado
|Comando|Utilidad|
|---|---|
|Tab|Completa predictivamente el comando|
|ls > archivos.txt|Envía la salida del comando 'ls' a 'archivos.txt' |
|cat archivos.txt \| grep linux|La salida de 'cat' es la entrada de 'grep'|
|apt update && apt upgrade |Hace un update del sistema y luego upgrade|
|rm * \||| ls |Borra todos los archivos y si falla ese comando ejecuta ls|
|Ctrl + 1|Cambia a la TTS 1 de las 7 que tiene|
|Ctrl + c|Termina comando que se está ejecutando|
|Ctrl + z|Suspende un proceso|
|Ctrl + d|Muestra el final de un archivo|
|Ctrl + Alt + t|Abre una nueva terminal|
|&|Al final del comando lo hace correr en segundo plano|

## System
|Comando|Utilidad|
|---|---|
|date|Despliega día y hora|
|uname -a|Toda la info del sistema|
|screenfetch|descripción del sistema 2.0|
|ls -*argumentos*|Listado de archivos y directorios|
|cd|Cambia de directorio|
|pwd|Muestra el directorio actual|
|man *cd*|Manual del comando|
|cd --help|Ayuda rápida del comando cd|
|~|Directorio Home|
|mkdir|Crea un directorio|
|mv -*argumentos*|Mueve archivos o directorios|
|cp -*argumentos*|Copia archivos y directorios|
|rm|Borra|
|cal|Calendario|
|cat|Muestra el contenido del un archivo|
|file *archivo*|Muestra que tipo de archivo es|
|history|Historial de comandos en Bash|
|alias|Genera un enlace a un comando con un nombre distinto, puede agregar parámetros|
|set|Información del entorno de usuario|
|halt|Detiene el sistema|
|reboot|Reinicia el sistema|
|exit|Salida de la sesión de usuario|
|free|Muestra la memoria libre de sistema|
|env|Muestra las variables de entorno del usuario|
|bc|Calculadora en línea de comando|
|mc|Midnight Commander clone de Norton Commander|

## Hardware
|Comando|Utilidad|
|---|---|
|lspci|Muestra periféricos conectados a la máquina|
|lsusb|Muestra puertos usb|

## Sistema de paquetes
|Comando|Utilidad|
|---|---|
|yum rpm|Red hat, Suse, Centos|
|apt deb|Debian, Ubuntu y derivados|
|slapt txz|Slackware|

## Permisos

## Red

## Usuarios
|Comando|Utilidad|
|---|---|
|whoami|que usuario estoy usando|
|adduser o useradd|Agrega un nuevo usuario|
|userdel|Borra usuario|
|su|Cambia de usuario|
|passwd|Cambia la contraseña|
|who|Muestra los usuarios en el sistema|
|id|Datos de identificación del usuario|

## Búsquedas

## Tareas programadas
|Comando|Utilidad|
|---|---|
|cron|Se ejecuta un comando periodicamente un comando|
|at|A determinado momento se ejecuta una sola vez este comando|

## accesos remotos
|Comando|Utilidad|
|---|---|
|ssh|Entra a otra pc por SSH, como Putty en windows|
|ftp|Entra a una pc por protocolo ftp|
|rdesktop|Acceso a otra computadora por Remote Desktop de Windows|
|vnc|Acceso por VNC|

## Procesos
|Comando|Utilidad|
|---|---|
|htop|Listado 'Friendly' de procesos|
|top|Listado de procesos por default en todas las distribuciones|
|time|Mide el tiempo que tarda un proceso en ejecutarse|
|kill|Mata un proceso|
|killall|Mata al proceso por su nombre|
|ps|procesos del usuario|

## Disco
|Comando|Utilidad|
|---|---|
|fdisk|Formatea particiones|
|df -h|Espacio en Disco '-h human readable'|
|dd|Copia todo el disco completo como imagen|
|mount|Monta un sistema de archivos|
|fsck *.fat* *.ext3*|Estado y corrección del sistema de archivos|

## Editores: vi, emacs, nano, joe
|Comando|Utilidad|
|---|---|
|touch|Crea un archivo|
|

## awk

## Scripting