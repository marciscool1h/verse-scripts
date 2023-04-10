RED='\033[0;31m'
GREEN='\033[1;32m'
NC='\033[0m'
YELLOW='\033[0;33m' 
PURPLE='\033[1;35m' 
os=$(lsb_release -is)
version=$(lsb_release -rs)

clear
echo -e "${GREEN}#####################################"
echo -e "${GREEN}"
echo -e "${GREEN}           Verse Scripts Menu"
echo -e "${GREEN}         Running on $os $version"
echo -e "${GREEN}"
echo -e "${GREEN}#####################################"
echo -e ""
echo -e "${GREEN}[1] Install PufferPanel"
echo -e "${GREEN}[2] Install Pterodactyl Panel"
echo -e "${GREEN}[3] Exit"
echo "Enter your choise [1/2/3] "; read 
case $REPLY in
1)
clear
echo -e "${GREEN}#####################################"
echo -e "${GREEN}"
echo -e "${GREEN}           PufferPanel script"
echo -e "${GREEN}         Running on $os $version"
echo -e "${GREEN}"
echo -e "${GREEN}#####################################"
echo -e ""
echo -e "${GREEN}[1] Install PufferPanel"
echo -e "${GREEN}[2] Remove PufferPanel"
echo -e "${GREEN}[3] Exit"
echo "Enter your choise [1/2/3] "; read 
case $REPLY in
1)
apt-get install sudo
curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
sudo apt-get install pufferpanel
echo -e "${GREEN}PufferPanel has been installed! To use it, go to ${YELLOW}/etc/pufferpanel/config.json${GREEN}, find ${YELLOW}\"host\"${GREEN} and replace 8080 with your server port"
echo -e "${GREEN}After that, type in console ${YELLOW}sudo systemctl enable pufferpanel"
echo -e "${GREEN}To add user, open goTTY and enter ${YELLOW}pufferpanel user add${GREEN} and follow the instructions"
echo -e "${GREEN}Script will turn on goTTY now${NC}"
echo "Enter your server port:"; read
;;
2)
apt remove pufferpanel
rm -r /var/lib/pufferpanel
rm -r /etc/pufferpanel
echo "All PufferPanel files have been removed!"
;;
3)
echo "Exiting..."
exit
esac
;;
2) 
bash <(curl -s https://pterodactyl-installer.se)
;;
3) 
echo "Exiting..."
exit
;; 
esac
