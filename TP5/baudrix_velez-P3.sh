while true; do
clear
echo "###############################"
echo "#         CALCULADORA         #"
echo "###############################"
echo "#                             #"
echo "# Opcion[1] - Suma            #"
echo "# Opcion[2] - Resta           #"
echo "# Opcion[3] - Multiplicacion  #"
echo "# Opcion[4] - Division        #"
echo "# Opcion[0] - Salir           #"
echo "#                             #"
echo "###############################"
echo -n "Ingresa tu eleccion: "
read opcion

if [ "$opcion" -eq 1 ]; then
	clear
	echo "###############################"
	echo "#            SUMA             #"
	echo "###############################"
	echo -n "Ingresa un numero para sumar: "
	read numero1suma
	echo -n "Ingresa otro numero para sumar: "
	read numero2suma
	total_suma=$(echo "scale=5; $numero1suma + $numero2suma" | bc)
	if [ "$(echo "$numero2suma" | bc)" != "$numero2suma" ]; then
		echo ""
                echo "Ingresaste un valor incorrecto, solo podes ingresar numeros!"
		echo ""
	elif [ "$(echo "$numero1suma" | bc)" != "$numero1suma" ]; then
                echo ""
                echo "Ingresaste un valor incorrecto, solo podes ingresar numeros!"
                echo ""
	else
		echo ""
		echo "--> $numero1suma + $numero2suma = $total_suma"
		echo ""
	fi
	while true; do
		echo -n "Ingresa x para volver al menu: "
		read -r -n 2 volver
		if [[ $volver == $'x' ]]; then
			break
		else
			echo "Opcion invalida, para volver al menu ingresa x"
		fi 
	done
elif [ "$opcion" -eq 2 ]; then 
	clear
	echo "###############################"
        echo "#            RESTA            #"
        echo "###############################"
        echo -n "Ingresa un numero para ser restado: "
        read numero1resta
        echo -n "Ingresa el numero que le quieres restar: "
        read numero2resta
	total_resta=$(echo "scale=5; $numero1resta - $numero2resta" | bc)
        if [ "$(echo "$numero2resta" | bc)" != "$numero2resta" ]; then
                echo ""
                echo "Ingresaste un valor incorrecto, solo podes ingresar numeros!"
                echo ""
	elif [ "$(echo "$numero1resta" | bc)" != "$numero1resta" ]; then
                echo ""
                echo "Ingresaste un valor incorrecto, solo podes ingresar numeros!"
                echo ""
        else
                echo ""
                echo "--> $numero1resta - $numero2resta = $total_resta"
                echo ""
	fi
        while true; do
                echo -n "Ingresa x para volver al menu: "
                read -r -n 2 volver
                if [[ $volver == $'x' ]]; then
                        break
                else
                        echo "Opcion invalida, para volver al menu ingresa x"
                fi
        done
elif [ "$opcion" -eq 3 ]; then
	clear
	echo "###############################"
        echo "#       MULTIPLICACION        #"
        echo "###############################"
        echo -n "Ingresa un numero para ser multiplicado: "
        read numero1multi
        echo -n "Ingresa el numero por el que lo quieres multiplicar: "
        read numero2multi
	total_multi=$(echo "scale=5; $numero1multi * $numero2multi" | bc)
        if [ "$(echo "$numero2multi" | bc)" != "$numero2multi" ]; then
                echo ""
                echo "Ingresaste un valor incorrecto, solo podes ingresar numeros!"
                echo ""
	elif [ "$(echo "$numero1multi" | bc)" != "$numero1multi" ]; then
                echo ""
                echo "Ingresaste un valor incorrecto, solo podes ingresar numeros!"
                echo ""
        else
                echo ""
                echo "--> $numero1multi x $numero2multi = $total_multi"
                echo ""
        fi
	while true; do
                echo -n "Ingresa x para volver al menu: "
                read -r -n 2 volver
                if [[ $volver == $'x' ]]; then
                        break
                else
                        echo "Opcion invalida, para volver al menu ingresa x"
                fi 
        done 
elif [ "$opcion" -eq 4 ]; then 
	clear
	echo "###############################"
        echo "#          DIVISION           #"
        echo "###############################"
        echo -n "Ingresa un numerador de la division: "
        read numero1divi
        echo -n "Ingresa el denominador de la division: "
        read numero2divi
	echo ""
        if [ "$(echo "$numero2divi" | bc)" != "$numero2divi" ]; then
                echo ""
                echo "Ingresaste un valor incorrecto, solo podes ingresar numeros!"
                echo ""
		while true; do
                        echo -n "Ingresa x para volver al menu: "
                        read -r -n 2 volver
                        if [[ $volver == $'x' ]]; then
                                break
                        else
                                echo "Opcion invalida, para volver al menu ingresa x"
                        fi 
                done
	elif [ "$numero2divi" -eq 0 ]; then
		echo -n "Error! No es posible dividir por 0"
		while true; do
                	echo -n "Ingresa x para volver al menu: "
                	read -r -n 2 volver
                	if [[ $volver == $'x' ]]; then
                        	break
                	else
                        	echo "Opcion invalida, para volver al menu ingresa x"
                	fi 
       		done
	else
		total_divi=$(echo "scale=5; $numero1divi / $numero2divi" | bc)
              	echo ""
               	echo "--> $numero1divi / $numero2divi = $total_divi"
               	echo ""
        	while true; do
                	echo -n "Ingresa x para volver al menu: "
                	read -r -n 2 volver
                	if [[ $volver == $'x' ]]; then
                        	break
                	else
                        	echo "Opcion invalida, para volver al menu ingresa x"
                	fi 
        	done
	fi
elif [ "$opcion" -eq 0 ]; then
	clear
	break;
fi
done

