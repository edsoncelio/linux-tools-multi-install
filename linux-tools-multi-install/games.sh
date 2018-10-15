function install_games(){
        PACOTES=$(whiptail --title "Games"  --ok-button instalar --cancel-button voltar --checklist \
                "Escolha o que deseja instalar : " 18 63 5 \
                "Steam"        " Plataforma de Jogos  " OFF \
                "DosBox"       " Emulador de Jogos  " OFF \
                "Emulator Ps2" " Emulador de Jogos " OFF \
                "Znes"         " Emulador de Jogos " OFF  3>&1 1>&2 2>&3)
                     
}

install_games
