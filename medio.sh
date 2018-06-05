#!/bin/bash

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

> numeros.txt
echo "${CYAN}----------------------------------------------${NORMAL}"
echo "${MAGENTA}Ingrese numeros uno por uno hasta aburrirse... ${NORMAL}"
echo "${CYAN}----------------------------------------------${NORMAL}"
    
    numero=""
    while [[ "$numero" != "M" ]]
    do
        read numero
        if  [[ $numero =~ ^[0-9]+$ ]]
        then
            echo "$numero" >> numeros.txt
        fi
        
    done

    printf '\n'

    echo "${YELLOW} El promedio es ${RED}$(  awk '{ cant++; sumatoria+=$1} END { print cant ? sumatoria /cant : 0 }' ./numeros.txt )${YELLOW}${NORMAL}"

echo "${CYAN}----------------------------------------------${NORMAL}"
