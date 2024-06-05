#!/bin/bash
#demanar fins a quin número vol sumar l'usuari
# read -p "Fins a quin número vols sumar: " LIMIT

#VOLEM UN ÚNIC PARÀMETRE
#QUE SERÀ EL LÍMIT
if [[ ${#} -ne 1 ]]
then
    echo "has d'introduir només un paràmetre"
    exit 1
fi
LIMIT=${1}

SUMATORI=0
FACTORIAL=1
N=1
while [[ ${N} -le ${LIMIT} ]]
do
    SUMATORI=$((SUMATORI+N))
    N=$((N+1))
done
echo "EL SUMATORI DE ${LIMIT} val ${SUMATORI}"