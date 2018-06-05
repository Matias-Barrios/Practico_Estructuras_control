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
echo "${MAGENTA}Lineas vacias en /etc/adduser.conf ${NORMAL}"
echo "${CYAN}----------------------------------------------${NORMAL}"
    
    echo "${YELLOW} El archivo /etc/adduser.conf tiene ${RED}$(  grep '^ *$'  /etc/adduser.conf 2>/dev/null | wc -l | cut -f1 -d ' ' )${YELLOW} lineas vacias ${NORMAL}"

echo "${CYAN}----------------------------------------------${NORMAL}"

