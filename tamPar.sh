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
echo "${MAGENTA} Archivos del home que tengan un tamaño par {NORMAL}"
echo "${CYAN}----------------------------------------------${NORMAL}"

    find . -type f -name '*' -printf "%p %b \n" | awk '{ if ( ($2 % 2) == 0 ) { print $1} }'

echo "${CYAN}----------------------------------------------${NORMAL}"

