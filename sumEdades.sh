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

echo "${CYAN}----------------------------------------------${NORMAL}"
echo "${MAGENTA}Suma de edades en edades.txt ${NORMAL}"
echo "${CYAN}----------------------------------------------${NORMAL}"
    
    awk -F':' '{ resultado+=$2} END { print resultado}' ./edades.txt

echo "${CYAN}----------------------------------------------${NORMAL}"
