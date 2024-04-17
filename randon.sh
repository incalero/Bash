#!/bin/bash

# Pedir al usuario que introduzca un Username

read -p "Introduzca el nombre de usuario " nombre_usuario

read -p "Introduzca la ruta de su directorio " ruta_directorio

# Verifica que el usuario existe en el sistema

if  id "$nombre_usuario" &> /dev/null ; then
	echo "El usuario $nombre_usuario existe en el sistema" 
	permisos_usuario=$(sudo -u "$nombre_usuario" stat -c "%A" "$ruta_directorio")
	echo "los permisos de $nombre_usuario son: $permisos_usuario" 
	read -p "Ingrese los nuevos permisos para el directorio $ruta_directorio: " nuevos_permisos
	# Cambiar los permisos
	sudo chmod "$nuevos_permisos" "$ruta_directorio"
	permisos_usuario=$(sudo -u "$nombre_usuario" stat -c "%A" "$ruta_directorio")
	echo "los permisos de $nombre_usuario" han sido cambiados a "$permisos_usuario"
else
	echo "el usuario $nombre_usuario no existe en el sistema"


# Cambiar los permisos del directorio


fi
