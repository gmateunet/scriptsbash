#!/bin/bash

#recollir la informació de la partició en una variable
PARTICIO=$(df -T -h | grep /dev/sda1)

#enviar aquesta informació a telegram
/home/guillem/bin/missatge_telegram.sh "${PARTICIO}"