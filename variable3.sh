#!/bin/bash

#Autor: Henry AT
#Fecha: 23/07/2017
#Descripcion: Variables locales y globales
#Contacto: henry-at@gmai.com

variable="Soy una variable Global"
echo
function miBash 
{
  local variable="Soy una variables Local"
  echo $variable
}
echo $variable
echo
miBash
echo $variable
