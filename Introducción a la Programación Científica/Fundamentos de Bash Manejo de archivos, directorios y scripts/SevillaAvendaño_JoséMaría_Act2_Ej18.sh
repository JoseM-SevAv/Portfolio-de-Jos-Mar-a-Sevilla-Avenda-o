#!/bin/bash

echo "Introduce el directorio del archivo a encontrar"

read FILE

#Introducimos el directorio del archivo para ver si existe en el sistema.

if [ -f $FILE ]

#Con un bucle if-else buscamos si este archivo exixte.

then
	echo El fichero $FILE existe.
else
	echo El fichero $FILE no existe. 
fi

#Damos las posibles respuestas tanto si existe como si no.
