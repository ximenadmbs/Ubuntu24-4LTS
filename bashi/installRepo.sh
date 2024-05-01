#!/bin/bash
echo -e "\e[0;38;5;208m[   Actualisador e intalador de completentos para Ubuntu LTS.   ]\e[0m"
echo -e "\e[0;38;5;208m[Se iniciara la instalacion de repositorios.                    ]\e[0m"
                 echo "-----------------------------------------------------------------" ; sleep 2s
	echo " "
#Seccion de Instalacion de repositorios:
    sudo add-apt-repository universe -y
    sudo flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
    #sudo add-apt-repository ppa:helkaluin/webp-pixbuf-loader -y
    sudo apt update
echo " "
echo -e "\e[0;38;5;208m✅ Se instalaron nuevos repositorios y se actualiso la base de datos\e[0m" ; sleep 1s
echo " "
echo -ne 'Terminando: - \r' ; sleep 0.3
echo -ne 'Terminando: \ \r' ; sleep 0.3
echo -ne 'Terminando: | \r' ; sleep 0.3
echo -ne 'Terminando: / \r' ; sleep 0.3
echo -ne 'Terminando: OK \r' ; sleep 1s
echo -ne '\n'
echo " "
echo "	Presiona cualquier tecla para continuar."
echo "	q.-Salir"
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
q) date && sleep 3s && exit;;
*) clear && bash bashi/installMenu.sh
exit 1;;
esac
exit 0

#chmod 777 installApps-UbuntuLTS.sh
#Ejecutar con ./installApps-UbuntuLTS.sh

# mié 09 sep 2022 12:52:45 CDT
# mar 03 ene 2023 19:53:42 CST
# mar 16 abr 2024 19:04:43 CST
