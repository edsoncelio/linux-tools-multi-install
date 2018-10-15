#!/bin/bash

#Script para instalação personalizada de softwares 
#para as distribuições base Debian 2016/03/09

#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  

DISTRO=$(cat /etc/os-release | grep  PRETTY_NAME | cut -c 13-)		
MENU=$(whiptail  --cancel-button sair --ok-button ok --cancel-button cancelar --title "Selecao de Software" --menu \
              "Bem vindo ${USER},usuário do ${DISTRO}. A partir desse menu poderá selecionar os softwares \
para a instalacao personalizada.\
As opções podem ser selecionadas usando CIMA/BAIXO." 20 60 8 \
              "Aplicativos de Escritorio" ""\
              "Aplicativos de Games" ""\
              "Aplicativos de Internet" ""\
              "Aplicativos de Multimidia" ""\
              "Aplicativos de Desenvolvimento" ""\
              "Interfaces Graficas"  ""\
              "Sair do Menu" "" 3>&1 1>&2 2>&3) 
               status=$?                
               clear
 if [ $status = 0 ]; then
  case $MENU in
	  Aplicativos\ \de\ \Escritorio) $(./escritorio.sh);;
	  Aplicativos\ \de\ \Games) $(./games.sh);;
	  Aplicativos\ \de\ \Internet) $(./internet.sh);;
	  Aplicativos\ \de\ \Multimidia) $(./multimidia.sh);;
      Aplicativos\ \de\ \Desenvolvimento) $(./ide.sh);;
	  Interfaces\ \Graficas) $(./de.sh);;
	  Sair\ \do\ \Menu) clear;;
	  *) 
	  break;;
  esac
 fi

                    



