#!/bin/bash

echo "Ingrese un numero: "
read numero1
echo "Ingrese segundo numero: "
read numero2
echo
if [ $numero1 -eq $numero2 ];then
  echo "Los numeros $numero1 y $numero2 son iguales."
fi

if [ $numero1 -lt $numero2 ]; then
  echo "El numero $numero1 is menor que $numero2"
fi

if [ $numero1 -gt $numero2 ]; then
  echo "el numero $numero1 es mayor que $numero2."
fi
