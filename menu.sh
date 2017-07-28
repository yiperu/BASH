#!/bin/bash

echo "Ingrese una opcion"
echo
echo "1 Limpiar pantalla"
echo "2 Mostrar la ruta actual"
echo "3 Mostrar el historial de comandos"
echo "4 salir de este programa"
echo
echo "Seleccionar una opcion:"
read opcion

case $opcion in

1) clear;;
2) pwd;;
3) history;;
4) exit;;
*) echo "Opcion no Válidai"

esac

