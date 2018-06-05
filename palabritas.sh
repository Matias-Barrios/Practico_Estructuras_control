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

> palabras.txt
echo "${CYAN}----------------------------------------------${NORMAL}"
echo "${MAGENTA}Ingrese palabras una por una hasta aburrirse... ${NORMAL}"
echo "${CYAN}----------------------------------------------${NORMAL}"
    
    palabra=""
    while [[ "$palabra" != "salir" ]]
    do
        read palabra
        [[ "$palabra" != "salir" ]] && echo "$palabra" >> palabras.txt
    done

    printf '\n'

    echo "${YELLOW} Usted ha ingresado ${RED}$( wc -l palabras.txt | cut -f1 -d' ' )${YELLOW} palabras ${NORMAL}"

echo "${CYAN}----------------------------------------------${NORMAL}"

