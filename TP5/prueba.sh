ENTRY=`zenity --Numero1 --Numero2`

case $? in
         0)
	 	echo "Numero 1: `echo $ENTRY | cut -d'|' -f1`"
	 	echo "Numero 2: `echo $ENTRY | cut -d'|' -f2`"
		;;
         1)
                echo "Sumando.";;
        -1)
                echo "An unexpected error has occurred.";;
esac
