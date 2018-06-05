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
uuid=`id -u`
echo "${CYAN}----------------------------------------------${NORMAL}"
echo "${MAGENTA}trate de adivinar su UUID... ${NORMAL}"
echo "${CYAN}----------------------------------------------${NORMAL}"
    
    numero=""
    while [[ "$numero" != "$uuid" ]]
    do
        read numero
         
    done
    
    printf '\n'

    echo "${YELLOW} Felicitaciones!! Ha acertado. Su UID es ${RED}$numero ${YELLOW}${NORMAL}"

echo "${CYAN}----------------------------------------------${NORMAL}"