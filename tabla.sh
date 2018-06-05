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

printf '\n'

echo "${CYAN}----------------------------------------------${NORMAL}"
echo "${MAGENTA}Tabla de multiplicar del $numero usando 'For'${NORMAL}"
echo "${CYAN}----------------------------------------------${NORMAL}"
    for i in {1..10}
    do
        echo "$numero * $i = "$'\t'"$(( numero * i ))"
    done
echo "${CYAN}----------------------------------------------${NORMAL}"

printf '\n'

echo "${CYAN}----------------------------------------------${NORMAL}"
echo "${RED}Tabla de multiplicar del $numero usando 'While'${NORMAL}"
echo "${CYAN}----------------------------------------------${NORMAL}"
    i=0
    while [[ $i -le 10 ]]
    do
        (( i++ ))
        echo "$numero * $i = "$'\t'"$(( numero * i ))"

    done
echo "${CYAN}----------------------------------------------${NORMAL}"

printf '\n'

echo "${CYAN}----------------------------------------------${NORMAL}"
echo "${GREEN}Tabla de multiplicar del $numero usando 'Until'${NORMAL}"
echo "${CYAN}----------------------------------------------${NORMAL}"
    i=0
    until [[ $i -gt 10 ]]
    do
        (( i++ ))
        echo "$numero * $i = "$'\t'"$(( numero * i ))"

    done
echo "${CYAN}----------------------------------------------${NORMAL}"

