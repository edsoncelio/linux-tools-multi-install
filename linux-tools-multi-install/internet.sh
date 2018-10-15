function install_internet(){
        PACOTES=$(whiptail --title "Internet" --ok-button instalar --cancel-button voltar --checklist \
                "Escolha o que deseja instalar : " 18 63 5 \
                "Telegram" "Mensageiro Instantaneo" OFF \
                "Pidgin" "Mensageiro Instantaneo" OFF \
                "Transmission" "Download de Torrents" OFF \
                "Qbittorrent" "Download de Torrents" OFF \
                "Firefox" "Navegador de Internet " OFF  3>&1 1>&2 2>&3)
                     
}

install_internet
