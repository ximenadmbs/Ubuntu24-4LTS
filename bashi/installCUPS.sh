#!/bin/bash
echo -e "\e[0;38;5;208m[   Actualisador e intalador de completentos para Ubuntu LTS.   ]\e[0m"
echo -e "\e[0;38;5;208m[Se iniciara Seccion de Instalacion de apps de interfacegrafica,]\e[0m"
echo -e "\e[0;38;5;208m[impresora pdf CUPS, font-manager y plantillas.                 ]\e[0m"
	             echo "-----------------------------------------------------------------" ; sleep 2s
	echo " "
#Seccion de Instalacion de apps de interfacegrafica:
    #sudo nala install printer-driver-cups-pdf -y
    #echo -e "\e[0;38;5;208m█ cups-pdf installed \e[0m" ; sleep 1s
    sudo nala install font-manager -y
    echo -e "\e[0;38;5;208m█ font-manager installed \e[0m" ; sleep 1s
echo " "
#Seccion de instalaciones de Plantillas y complementos personalisados.
    echo " Instalando las plantillas en ~/Plantillas"
    touch $HOME/Plantillas/'Documento txt.txt'
        echo ". " >> $HOME/Plantillas/'Documento txt.txt'

    touch $HOME/Plantillas/'Documento md.md'
        echo "# Titulo" >> $HOME/Plantillas/'Documento md.md'
        echo "### Sub titulo" >> $HOME/Plantillas/'Documento md.md'
        echo "> Comentario" >> $HOME/Plantillas/'Documento md.md'
        echo "* Vineta" >> $HOME/Plantillas/'Documento md.md'

    tar -Jxvf plantillas.tar.xz -C $HOME/Plantillas

    	cp -r fish/ $HOME/.config/
		echo "date" >> $HOME/.bashrc ; echo "fish" >> $HOME/.bashrc
		
    echo " Instalando de bienvenida para fish en ~/.config/fish/" ; sleep 1s
echo " "
echo -e "\e[0;38;5;208m✅ Se instalaron las plantillas\e[0m" ; sleep 1s
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

# dom 04 dic 2022 13:20:49 CST
# sáb 17 dic 2022 19:14:01 CST
# mar 03 ene 2023 19:53:42 CST
# mar 16 abr 2024 19:04:43 CST
