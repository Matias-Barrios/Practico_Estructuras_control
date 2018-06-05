#!/bin/bash

if  [[ $# -ne 1 ]]
then
    echo "Este script necesita un unico parametro numerico"
    exit 2
fi

if  [[ ! $1 =~ ^[0-9]+$ ]]
then
    echo "El  parametro debe ser un numero"
    exit 3
fi

BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)

anio=$1

esBisiesto() { 
   param=$1
    
   [[ ( $(( param % 4 )) -eq 0 && ! $(( param % 100 )) -eq 0 ) || ( $(( param % 4 )) -eq 0 && $(( param % 400 )) -eq 0 ) ]] && echo "Es bisiesto" || echo "No es bisiesto"
}

echo "${CYAN}----------------------------------------------${NORMAL}"
echo "${MAGENTA}Chequeear si el año $anio es bisiesto${NORMAL}"
echo "${CYAN}----------------------------------------------${NORMAL}"

    esBisiesto $anio

echo "${CYAN}----------------------------------------------${NORMAL}"

