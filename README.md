# BASH

-

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

💡 [La mejor explicacion de permisos chmod, 755, etc](https://askubuntu.com/questions/932713/what-is-the-difference-between-chmod-x-and-chmod-755/932974)

Para ejecutar archivo

```
./<file>.sh
```

Para crear un archivo puedo usar el comando `touch`

```
touch texto1
```

### Primer ejemplo de un programa

file: primer-file

```
#!/bin/bash
echo "What Up man"
```

Guardar con .sh, darle los permisos de ejecucion y ejecutarlo con `./primer-file`

Si la variable contiene una cadena, este va entre commillas `" o '` 

#### Usando variables

file: variable.sh

```
#!/bin/bash

nombre='Henry AT'

echo "Mi nombre es $nombre"
```

#### Leyendo variables

file: variable2.sh

```
#!/bin/bash
echo "Cual es el nombre de tu SO?"
read nombre

echo "Tu SO es $nombre"
```
#### Comentarios
Estos se hacen anteponiendo `#` Ejemplo de plantilla informativa:

```
#!/bin/bash
#Autor: Henry AT
#Fecha: 23/07/2017
#Descripcion: Variables locales y globales
#Contacto: henry-at@gmai.com
```
#### Variables Globales y locales

##### Importante:
Cuando escribes solo `echo`, esto significa un salto de linea.

Es importante insertar sangrados (Tabs) en el programa.
##### Importante:
- Despues de declarar una variable el signo igual debe ir pegado tanto a la variable como a su valor `variable=valor` sin espacios entre ellos
- Para los casos de las variables locales es muy importante usar la palabra reservada `local`

#### Leyendo variables

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

#### Ingresando cadena de texto

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

### Condicionales

En las condicionales, es muy importante los sangrados.
Primer simple ejemplo if.sh:

```
#!/bin/bash

echo "Ingresa tu edad:"
read edad

  if test $edad = 18;  then
    echo "Eres mayor de edad"
  else
    echo "No sabemos si eres joven o anciano"
  fi
```

Ejemplo verificador de tipo de archivo:

```
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
```

### Menu

💡 Para que cualquier archivo Bash que creamos se pueda ejecutar de cualquier lugar lo copiamos a la carpeta `/bin` Ojo con los permisos y este archivo no debe tener extension

Ejemplo de Menu

```
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
```
💡 Pasar a esta carpeta para que pueda ser ejecutado desde cualquier lado.

`sudo cp menu.sh /bin/menu`

### Operadores Numéricos

| Descripcion | Comando | Significado |
|------------- | ------------- | ------------- |
| Equal | -eq | == |
| Not Equal | -ne | != |
| Lower than | -lt | < |
| Greater than | -gt | > |
| Lower equal | -le | <= |
| Greater than | -ge | >= |

### Operadores Con Cadenas

| Descripcion | Comando | Significado |
|------------- | ------------- | ------------- |
| Equal | -| = |
| Diferentes | - | != |
| Con longitud mayor que cero | - | -n |
| Longitud igual a 0 o vacio | - | -z |
| Lower than | - | < |
| Greater than | - | > |

### Operadores Con Ficheros

| Descripcion | Comando | Significado |
|------------- | ------------- | ------------- |
| Es un directorio | -d | - |
| Existe el fichero | -e | - |
| Es un fichero ordinario | -f | - |
| Es leíble | -r | - |
| Es no vacio | -s | - |
| Es escribible | -w | - |
| Es Ejecutable | -x | - |
| Eres el dueño del fichero | -O | - |
| El grupo del fichero es igual al tuyo | -G | - |
| Fichero 1 es mas reciente que fichero 2 | -nt | - |
| Fichero 1 es mas antigu que fichero 2 | -ot | - |

### Operadores Booleanos

| Descripcion | Comando | Significado |
|------------- | ------------- | ------------- |
| Negacion | ! | - |
| and | -a | - |
| or | -o | - |


💡 Tener en cuenta que la condicional que va dentro de los simbolos `[ ` y ` ]` deben tener un espacio en blanco entre estos: `[ $text1 != $text2 ]` .

### Ejemplo Comparaciones Aritmeticas
```
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
```


### Ejemplo Comparaciones Aritmeticas

```
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
```

### Ejemplo Aritmetics Operations

```
#!/bin/bash

# let es usado para expresiones matematicas, let es igual a poner (())
let suma=3+5
echo "3 + 5 = $suma"
let resta=7-3
echo "7 - 3 = " $resta
let multiplicacion=5*3
echo "5 x 3 = $multiplicacion"
let division=12/4
echo "12 / 4 = $division"
let modulo=17%3
echo "17 % 3 = " $modulo
let potencia=4**2
echo "4 a la 2 = $potencia"
```

### Some command for get information of System

| Command | Descripcion |
|------------- | ------------- |
| top | show running processes, memory usage and similar stats |
| iostat | show I/O per terminal, device and SPU summery statistics |
| vm_stat | show Mach virtual memory statistics |
| df and diskutil list | report on drive space used and free |
| fs_usage | show file activity for both disk and network |
| nettop | display updated information about the network (a bit like top for net I/O) |
| w | display who is logged in, what they are doing and system load |
| ifconfig and ipconfig | network interface and IP protocol details |
| `top -l 1 -s 0 | grep PhysMem` | |
| `top -l 1 -s 0 | grep PhysMem | sed 's/, /\n         /g'` | |
| sw_vers -productVersion  | |
| system_profiler SPSoftwareDataType | |
| sw_vers -productVersion | |


💡 Cada uno de estos tiene una serie de opciones: `$ man <command>` example: `$ man top`


### Ejemplo Info of System

```
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
```

💡 Para pasarse al modo root run el sigte comando: `$ sudo su`, pedira password

💡 Para salir al usuario normal : `$ exit`

💡 Para hacer que 2 o mas comandos se ejecuten unos seguido del otro, se usa el 'punto y coma' : `;`, example:

```
$ pwd; date; ls -las
```

### Ejemplo de mostrar el usuario

```
#!/bin/bash

clear
usuario=$(whoami)
lineas="==========================="
echo
echo $lineas
echo "Bien venido al curso de scrip con BASH, "$usuario
echo $lineas
echo
```






