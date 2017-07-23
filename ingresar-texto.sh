#!/bin/bash

#Autor: Henry AT
#Fecha: 23/07/2017
#Descripcion: Ingresar cadenas de texto 
#Contacto: henry-at@gmai.com

echo -e "Ingresa una palabra: "
read palabra
echo
echo -e "La palabra que ingresaste fue: $palabra"
echo
echo -e "Ingresa 2 palabras: "
read palabra1 palabra2
echo
echo -e "Las palabras que ingresastes fueron: 1 - $palabra1, 2 - $palabra2"
echo
echo -e "Escribe varias palabras: "
read -e
echo
echo -e "Las palabras que ingresastes fueron: $REPLY"
echo
echo -e "Menciona tus 3 herramientas favoritas de penteting:"
read -a herramientas
echo
echo -e "Tus herramientas favoritas de Pentesting son ${herramientas[0]},${herramientas[1]} y ${herramientas[2]} "
