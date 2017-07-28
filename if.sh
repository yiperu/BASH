#!/bin/bash

echo "Ingresa tu edad:"
read edad

  if test $edad = 18;  then
    echo "Eres mayor de edad"
  else
    echo "No sabemos si eres joven o anciano"
  fi
