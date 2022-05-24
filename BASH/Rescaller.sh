ll
#!/bin/bash
BOLD="\e[1m"
FAIN="\e[2m"
ITALIC="e[3m"
UNDERLINE="\e[4m"
BLACK="\e[30m"
GREEN="\e[92m"
YELLOW="\e[93m"
BLUE="\e[94m"
MAGENTA="\e[95m"
BGBLACK="\e[40m"
RED="\e[91m"
CYAN="\e[96m"
ENDCOLOR="\e[0m"
BGRED="\e[41m"
BGGREEN="\e[42m"
BGYELLOW="\e[43m"
BGBLUE="\e[44m"
BGMAGENTA="\e[45m"
BGCYAN="\e[46m"

echo -e "${UNDERLINE}"${BOLD}"${BGRED}WELCOME TO XIO RESCALLER \"SCRIPTED BY IT SYSTEM ADMINISTRATION DEPT\"${ENDCOLOR}"${ENDCOLOR}"${ENDCOLOR}"
echo -e "${BGBLACK}"${BOLD}"${UNDERLINE}"${GREEN}Insert Total Dose${ENDCOLOR}"${ENDCOLOR}"${ENDCOLOR}"${ENDCOLOR}"
read dose
total=0
file="./.results"	
while [[ $total -lt 100 ]]
do
	for ((i=1; $total<100; i++))
	do
		echo -e "${BGBLACK}"${BOLD}"${UNDERLINE}"${YELLOW}Insert "BEAM "$i "Percentage Value":${ENDCOLOR}"${ENDCOLOR}"${ENDCOLOR}"${ENDCOLOR}"
		read bm
		total=$(( $total + $bm ))
		echo -e "${BGBLACK}"${BLUE}Total BEAM Percentage Value IS :$total"%"${ENDCOLOR}"${ENDCOLOR}"
		echo -e "${BGBLACK}"${CYAN}Remaining Is: $((100-total)) "%"${ENDCOLOR}"${ENDCOLOR}"
		if [[ $total -lt 100 || $total -eq 100 ]]
		then
			bmdos=$((dose*bm/100))
			echo "#########################################" >> $file
                	echo -e "${BGBLACK}${GREEN}BEAM "$i" Dose Is:$bmdos CGY Which Is "$bm"%${ENDCOLOR}${ENDCOLOR}" >> $file
			echo "#########################################" >> $file
			echo >> $file 
		elif [[ $total -gt 100 ]]
		then
			echo -e "${BGBLACK}"${RED}\"WARNING !!\"${ENDCOLOR}"${ENDCOLOR}"
			echo -e "${RED}!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!${ENDCOLOR}"
			echo -e "${BGGREEN}"${RED}\"You Have Reached The Maximum Allowed Value Of BEAM Distribution Values\"${ENDCOLOR}"${ENDCOLOR}"
			echo -e "${RED}!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!${ENDCOLOR}"
			rm $file
		fi
	done
done
while [[ -e $file ]]
do
	cat $file
	rm $file
done
