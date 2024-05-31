#!/bin/bash
NUMEROS=${@}

SUMA=0
CUANTOS_NUMEROS=${#}
for N in ${NUMEROS}
do
    SUMA=$((SUMA + N))
done
echo "has introducido ${#} numeros"
echo "la suma de ${@} vale ${SUMA}"
MEDIA=$(echo "scale=2;${SUMA}/${CUANTOS_NUMEROS}" | bc)

echo "la media vale ${MEDIA}"

exit 0