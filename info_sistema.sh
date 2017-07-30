#!/bin/bash

echo "Informacion del sistema: "
echo
echo "Estado de la memoria"
vm_stat
echo
echo "Uso del disco duro"
df -h
echo "Version de este sistema"
system_profiler SPSoftwareDataType
