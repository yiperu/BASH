#!/bin/bash

echo "Ingrese el nombre del archivo que quieres verificar"
read file

if [ -a $file  ]; then
  echo "El archivo existe"
  if [ -x $file  ]; then
    echo "El archivo es ejecutable"
  fi
  if [ -d $file  ]; then
    echo "Esto es un directorio"
  fi
else
  echo "El archivo o carpeta no existe"
fi 
