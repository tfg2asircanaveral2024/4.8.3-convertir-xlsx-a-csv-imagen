#!/bin/bash

# convertir los archivos XSLX en CSV
pwsh /script-pwsh.ps1 &> /dev/null

# en cada vuelta del bucle se utiliza una ruta a un fichero CSV
IFS='
'
for FICHERO in $(find -type f -name '*.csv')
do
	echo -e "\n\n----------------------\n${FICHERO}\n---------------------\n"
	cat $FICHERO
done
