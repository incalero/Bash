#!bin/bash

read -p "¿En que ciudad vives? " lugar
read -p "¿Cuantos anos tienes? " anos
read -p "¿Cuantos años de experiencia tiene?" expe
read -p "¿Tienes disponivilad para viajar? (si/no) " viaje
read -p "¿Tienes el nivel de ingles 1 o superior? (si/no) " ingles

if [ "$lugar" == "Bilbao" ] && [ "$expe" -ge 1 ] && [ "$ingles" == "si" ] && [ "$anos" -ge 18 ] && [ "$viaje" == "si" ]; then
	echo "enhorabuena, has sido seleccionado para el puesto"
else
	echo "lo sentimos mucho, no ha sido seleccionado"
fi


