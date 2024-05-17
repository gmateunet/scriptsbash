#!/bin/bash

#Genera un nombre aleatori entre 1 i 10:
adivina=$(( ( RANDOM % 10 )  + 1 ))
echo "${adivina}"
########################################################
# Escriu el teu codi aqui
########################################################
INTENTS=3
COUNT=0


while [[ ${COUNT} -lt 3 ]]
do
    read -p "introdueix un número: " NUM
    COUNT=$((COUNT + 1))
    if [[ ${NUM} -gt ${adivina} ]]
    then
        echo "Calent!"
    elif [[ ${NUM} -lt ${adivina} ]]
    then
        echo "Fred!"
    else
        echo "Eureka!"
        exit 0
    fi
done



########################################################
# Fi del teu codi
########################################################

echo "El nombre que havies d'adivinar era: ${adivina}"