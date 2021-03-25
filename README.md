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

## stderr stdin stdout pipe 
|Comando|Utilidad|
|---|---|
|ls > archivos.txt|Envía la salida del comando 'ls' a 'archivos.txt' |
|cat archivos.txt \| grep linux|La salida de 'cat' es la entrada de 'grep'|
|apt update && apt upgrade |Hace un update del sistema y luego upgrade|



## System
|Comando|Utilidad|
|---|---|
|date|Despliega día y hora|
|uname -a|Toda la info del sistema|
|screenfetch|descripción del sistema 2.0|
|cd|Cambia de directorio|
|man *cd*|Manual del comando|
|cd --help|Ayuda rápida del comando cd|
|~|Directorio Home|
|mkdir|Crea un directorio|
|mv -*argumentos*|Mueve archivos o directorios|
|cp -*argumentos*|Copia archivos y directorios|
|rm|Borra|
|dd|Copia completamente un disco o imagen|

## Hardware
|Comando|Utilidad|
|---|---|
|fdisk|Formatea particiones|

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

## Búsquedas

## Tareas programadas
|Comando|Utilidad|
|---|---|
|cron|Se ejecuta un comando periodicamente un comando|
|at|A determinado momento se ejecuta una sola vez este comando|
|---|---|


## SSH

## Procesos

## Disco


## Editores: vi, emacs, nano, joe

## awk

## Scripting

|  \/  | __ _ _ __ ___ ___  / ___|___ _ __ | |_ _   _ _ __(_) ___  _ __  
| |\/| |/ _` | '__/ __/ _ \| |   / _ \ '_ \| __| | | | '__| |/ _ \| '_ \ 
| |  | | (_| | | | (_| (_) | |__|  __/ | | | |_| |_| | |  | | (_) | | | |
|_|  |_|\__,_|_|  \___\___/ \____\___|_| |_|\__|\__,_|_|  |_|\___/|_| |_|