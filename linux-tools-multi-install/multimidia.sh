function install_midia(){
        PACOTES=$(whiptail --title "Multimidia" --ok-button instalar --cancel-button voltar --checklist \
                "Escolha o que deseja instalar : " 18 63 5 \
                "Vlc"        " Reprodutor de Midias          " OFF \
                "Kaffeine"   " Reprodutor de Midias             " OFF \
                "Burn"       " Gravador de cd/dvd      " OFF \
                "Mplayer"    " Reprodutor de Midia         " OFF \
                "Unetbootin" " Gravador de iso           " OFF  3>&1 1>&2 2>&3)
                     
}

install_midia
