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

####Ingresando cadena de texto

file: ingresar-texto.sh

```bash
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
```

💡 Podemos ver varios Tips:

- Para leer una palabra: `read variable`
- Para leer varias palabras, se separa con espacios: `read variable1 variable2`
- Se puede utilizar la variable por default de Bash `REPLY`
- Se pueden leer como si fueran arreglos: `read -a variableArray` y este luego se imprime usando la siguiente notacion `${herramientas[2]}`




# BASH
