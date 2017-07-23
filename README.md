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



