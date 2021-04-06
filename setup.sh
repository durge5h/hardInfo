#! /bin/bash

clear
echo '' 

orange=$(tput setaf 9)
reset=$(tput sgr0)
bold=$(tput bold)
black=$(tput setaf 0)
yellow=$(tput setaf 3)
red=$(tput setaf 1)
green=$(tput setaf 2)
gray=$(tput setaf 12)
white=$(tput setaf 7)
blue=$(tput setaf 4)


chmod 777 hardInfo
cp hardInfo /usr/bin/
				
function main(){

echo -e "\n${blue}Almost Done "
sleep 1
echo -e "${gray}Setup has completed "
sleep 1
read -p "${orange}You want to Continue Witth hardInfo - (y/n)? : ${reset}" prompt
echo ''
sleep 1
if [[ "$prompt" == "y" || "$prompt" == "Y" || "$prompt" == "yes" || "$prompt" == Yes ]]
then	
		clear
		echo -e "\n${green} Starting hardInfo .... ${reset} \n"
		sleep 2
		hardInfo
else
	echo "${red}exiting ... ${reset}"
		sleep 1	
		exit 0
	fi
}

function install(){
     echo -e "\n${orange}I wiil request you to install tools - boxes and lolcat to inhance UX \n"
     read -r -p "${green}Enter <y> to install [y/N]${reset}" response
     case "$response" in
			 [yY])
                sudo apt-get install boxes lolcat -y
                cp /usr/games/lolcat /usr/bin/  
				 clear
                 main
                 ;;
         *)      
                 main
                 
                 ;;
         esac
 }

 install
