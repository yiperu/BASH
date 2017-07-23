##BASH

***Bash es interpretado***

Para saber donde esta la app

```
which bash
```
La extension que debe tener los programas es `.sh` 

Para agregar permiso de ejecucion

```
chmod +x <file>.sh
```

Para ejecutar archivo

```
./<file>.sh
```

Para crear un archivo puedo usar el comando `touch`

```
touch texto1
```

###Primer ejemplo de un programa

file: primer-file

```
#!/bin/bash
echo "What Up man"
```

Guardar con .sh, darle los permisos de ejecucion y ejecutarlo con `./primer-file`

Si la variable contiene una cadena, este va entre commillas `" o '` 

####Usando variables

file: variable.sh

```
#!/bin/bash

nombre='Henry AT'

echo "Mi nombre es $nombre"
```

####Leyendo variables

file: variable2.sh

```
#!/bin/bash
echo "Cual es el nombre de tu SO?"
read nombre

echo "Tu SO es $nombre"
```
####Comentarios
Estos se hacen anteponiendo `#` Ejemplo de plantilla informativa:

```
#!/bin/bash
#Autor: Henry AT
#Fecha: 23/07/2017
#Descripcion: Variables locales y globales
#Contacto: henry-at@gmai.com
```
####Variables Globales y locales

#####Importante:
Cuando escribes solo `echo`, esto significa un salto de linea.

Es importante insertar sangrados (Tabs) en el programa.
#####Importante:
- Despues de declarar una variable el signo igual debe ir pegado tanto a la variable como a su valor `variable=valor` sin espacios entre ellos
- Para los casos de las variables locales es muy importante usar la palabra reservada `local`

####Leyendo variables

file: variable2.sh

```bash
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
```




