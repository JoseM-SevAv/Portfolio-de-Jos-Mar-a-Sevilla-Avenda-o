#!/bin/bash

# Pedimos un argumento numérico

echo "Introduce un argumento numérico"

# Creamos el argumento que escribiremos nosotros.

read argumento

# Añadimos el variables para cada una de las notas

Aprobado=5
Notable=7
Sobresaliente=9
Matricula=10

# Creamos nuestro bucle para clasificar la nota entre suspenso, aprobado, notable o sobresaliente.


if [ $argumento -lt $Aprobado ]
then
	echo "Suspenso" # Se traduce como: Si la nota es menor que el aprobado, escribe suspenso.
elif [ $Aprobado -le $argumento -a $argumento -lt $Notable ]
then 
	echo "Aprobado" # Se traduce como: Si la nota es mayor o igual al aprobado y ademas menor a notable,
# escribe aprobado.
elif [ $Notable -le $argumento -a $argumento -lt $Sobresaliente ]
then 
	echo "Notable"
elif [ $Sobresaliente -le $argumento -a $argumento -le $Matricula ]
then
	echo "Sobresaliente"
fi

 
