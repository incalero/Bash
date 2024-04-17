#!bin/bash

#!/bin/bash

fecha=$(date +"%d%m%Y")

read -p "Fecha de caducidad de tu pasaporte (DDMMYYYY): " pasaporte

meses=$(((pasaporte - fecha) / 10000 * 12 ))

if [ "$meses" -ge 6 ]; then
    tiene_pasaporte=true
else
    tiene_pasaporte=false
fi

read -p "¿Cuántos días dura tu viaje a Australia? " dias

if [ "$dias" -le 90 ]; then
    menos_de_90=true
else 
    menos_de_90=false
fi

read -p "¿Tienes antecedentes penales? (sí/no) " penale

if [ "$penales" == "no" ]; then
    no_tiene_antecedentes=true
else
    no_tiene_antecedentes=false
fi

echo "=== Resultado ==="
echo "Tiene pasaporte tiene 6 meses de vigencia: $tiene_pasaporte"
echo "tu viaje durará menos de 90 días: $menos_de_90"
echo "No tienes antecedentes penales: $no_tiene_antecedentes"

if $tiene_pasaporte && $menos_de_90 && $no_tiene_antecedentes; then
    echo "Puedes viajar a Australia!"
else
    echo "Lo siento, no puedes viajar a Australia."
fi

