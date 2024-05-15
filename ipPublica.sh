#!/bin/bash
IP_PUBLICA=$(curl ifconfig.me)

echo "la meva ip pública és ${IP_PUBLICA}"
#GUARDAM LA IP EN UN FITXER
echo ${IP_PUBLICA} > ip.txt