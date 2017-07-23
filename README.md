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



