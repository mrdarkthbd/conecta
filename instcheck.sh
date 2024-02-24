#!/bin/bash

check_installed() {
    if [ -f "/usr/lib/chuser/c4g.py" ]; then
        return 0  # Já instalado
    else
        return 1  # Não instalado
    fi
}
clear
echo "America/Sao_Paulo" > /etc/timezone
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime > /dev/null 2>&1
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1
clear
echo -e "\E[44;1;37m    INSTALL CHECKUSER DARKBDTUNNEL  \E[0m" 
echo ""
echo -e "                 \033[1;31mBy @MRDARKBD\033[1;36m"
echo ""
echo -ne "\n\033[1;32mDE UM ENTER PARA \033[1;33mCONTINUE...\033[1;37m: "; read -r
clear
echo -e "\n\033[1;36mINICIANDO INSTALAÇÃO \033[1;33mWAIT..."
apt-get install figlet -y > /dev/null 2>&1
pip3 install flask > /dev/null 2>&1
rm /bin/chuser > /dev/null 2>&1
sleep 5
cd /bin || exit
wget https://raw.githubusercontent.com/mrdarkthbd/conecta/main/chuser > /dev/null 2>&1
wget https://raw.githubusercontent.com/mrdarkthbd/conecta/main/userscheck > /dev/null 2>&1
chmod 777 chuser > /dev/null 2>&1
chmod 777 userscheck > /dev/null 2>&1
clear
mkdir /usr/lib/checkuser > /dev/null 2>&1
cd /usr/lib/checkuser || exit
rm c4g.py > /dev/null 2>&1
wget https://raw.githubusercontent.com/mrdarkthbd/conecta/main/c4g.py > /dev/null 2>&1
chmod 777 c4g.py > /dev/null 2>&1
clear
echo -e "        \033[1;33m • \033[1;32mINSTALLATION COMPLETED\033[1;33m • \033[0m"
sleep 2
clear
echo ""
echo -e "\033[1;31m \033[1;33mCOMANDO PRINCIPAL: \033[1;32mchuser\033[0m"
echo ""
echo -e "\033[1;33m MAIS INFORMAÇÕES \033[1;31m(\033[1;36mTELEGRAM\033[1;31m): \033[1;37m@MRDARKBD\033[0m"
cat /dev/null > ~/.bash_history && history -c
exit