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

numero=$1

function sumatoria(){
    if [[ $1 -eq 1 ]]
    then
        echo 1
    else
        echo $(($1 + $(sumatoria $[$1-1]) ))
    fi
}

printf '\n'

echo "${CYAN}----------------------------------------------${NORMAL}"
echo "${RED} Sumatoria hasta numero 'While'${NORMAL}"
echo "${CYAN}----------------------------------------------${NORMAL}"
    
    sumatoria $numero   

echo "${CYAN}----------------------------------------------${NORMAL}"


