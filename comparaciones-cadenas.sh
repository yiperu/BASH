#!/bin/bash

echo "Escriber la 1ra palabra: "
read palabra1
echo
echo "Escribir las 2da palabra: "
read palabra2

if [ $palabra1 = $palabra2 ];then
  echo "La palabra $palabra1 es igual a la palabra $palabra2."
fi

#Esto no esta funcionando
if [ $palabra1 > $palabra2 ];then
  echo "La palabra $palabra1 es mayor que la palabra $palabra2"
fi

#Esto no esta funcionando
if [ $palabra1 < $palabra2 ];then
  echo "La palabra $palabra1 es menor que la palabra $palabra2"
fi

if [ $palabra1 != $palabra2 ];then
  echo "La palabra $palabra1 es diferente que la palabra $palabra2"
fi

if [ -n $palabra1 ];then
  echo "La palabra $palabra1 No es empty"
fi
