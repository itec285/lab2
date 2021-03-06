#!/bin/bash -i	
#start in interative mode so history command will work..

#Color Codes for Color output later
red=`tput setaf 1`
green=`tput setaf 2`
blink=`tput blink`
reset=`tput sgr0`


spinner() {
    local i sp n
    sp='/-\|'
    n=${#sp}
    printf ' '
    while sleep 4; do
        printf "%s\b" "${sp:i++%n:1}"
    done
}

echo
echo CREATING A PROOF FILE IN YOUR HOME DIRECTORY...
echo

printf 'Doing important work '
spinner &

#sleep 6  # sleeping for 6 seconds is important work
apt-get install -qq -y sl > /dev/null

kill "$!" >/dev/null # kill the spinner
printf '\n'

/usr/games/sl #CHOO CHOO

cd > /dev/null
cat /etc/hostname > proof.txt
echo -------------Ifconfig------------ >>proof.txt
ifconfig >> proof.txt
echo -------------History------------- >>proof.txt
history >> proof.txt 
echo -------------Home Dir------------ >>proof.txt
ls -l >> proof.txt
echo -------------About Me------------ >>proof.txt
cat AboutMe >> proof.txt
cd > /dev/null
echo
ls -al proof.txt
echo
#echo "${red}red text ${green}green text${reset}"
echo "${red}DONE DONE DONE DONE DONE.${reset}"  
echo "${green}${blink}Use vi, nano, or mousepad to review your proof.txt file.${reset}" 
echo "${green}If satisfied with the file, email it to Mike: mlong@mhc.ab.ca${reset}"
echo
echo
