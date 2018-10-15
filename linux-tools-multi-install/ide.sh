
function install_ide(){
        PACOTES=$(whiptail --title "IDEs" --ok-button instalar --cancel-button voltar --checklist \
                "Escolha a IDE que deseja instalar : " 18 63 5 \
                "Netbeans" "IDE de desenvolvimento" OFF \
                "Geany" "IDE de desenvolvimento" OFF \
                "Arduino" "IDE de desenvolvimento" OFF \
                "Eclipse" "IDE de desenvolvimento" OFF \
                "Android " "IDE de desenvolvimento " OFF  3>&1 1>&2 2>&3) 
                    
}

install_ide
