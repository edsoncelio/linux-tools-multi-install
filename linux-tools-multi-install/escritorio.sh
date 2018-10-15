PACOTES=$(whiptail --title "Escritorio" --ok-button instalar --cancel-button voltar  --checklist \
                "Escolha o que deseja instalar : " 18 63 5 \
                "LibreOffice"  " Suite de escritório  " OFF \
                "Wps Office"   " Suite de escritório  " OFF \
                "Leafpad"      " Editor de Texto      " OFF \
                "Pluma "   " Editor de Texto     " OFF   3>&1 1>&2 2>&3)
                status=$?                
                clear
                
