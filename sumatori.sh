#!/bin/bash

# Obtenir la data actual en segons des de l'època
data_inici=$(date +%s)
if [[ ${#} -ne 1 ]]
then
    echo "cal un paràmetre"
    exit 1
fi

SUMA_FINS=${1}
NUM=1
RESULTAT=0
while [[ $NUM -le $SUMA_FINS ]]
do
    RESULTAT=$(echo "$RESULTAT + $NUM" | bc)
    
    NUM=$((NUM+1))
done
data_fi=$(date +%s)
# Calcula la diferència en segons
diferencia=$(($data_inici - $data_fi))
echo "SUMATORI DE 10 VAL $RESULTAT"
echo "LA SUMA S'HA FET EN ${diferencia} segons"