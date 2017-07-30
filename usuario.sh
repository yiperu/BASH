#!/bin/bash

clear
usuario=$(whoami)
lineas="==========================="
echo
echo $lineas
echo "Bien venido al curso de scrip con BASH, "$usuario
echo $lineas
echo
ping -c2 google.com
echo
echo "Ping completado"
read -p "Presionar enter para continuar"
