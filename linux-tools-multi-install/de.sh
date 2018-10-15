
function install_de(){
        PACOTES=$(whiptail --title "Interfaces Graficas" --checklist \
                "Escolha o ambiente gráfico que deseja instalar : " 18 63 5 \
                "MATE"  "            " OFF \
                "Xfce"  "            " OFF \
                "Gnome" "            " OFF \
                "KDE" "            " OFF \
                "Cinnamon" "         " OFF  3>&1 1>&2 2>&3)
                status=$?                
                clear
 
 if [ $status = 0 ]; then
  # selecionar opcao 
  case $PACOTES in
	  MATE) ;;
	  Xfce) ;;
	  Gnome) ;;
	  KDE) ;;
      Cinnamon) ;;
	  *) 
	  break;;
  esac
 fi
                           

}

install_de
