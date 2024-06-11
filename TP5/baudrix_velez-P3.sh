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
	echo -n "--> $numero1suma + $numero2suma = "
	echo "scale =5 ; $numero1suma + $numero2suma" | bc
	echo ""
	while true; do
		echo -n "Ingresa x para volver al menu: "
		read -r -n 2 volver
		if [[ $volver == $'x' ]]; then
			break
		else
			echo "Opcion invalida, para volver al menu ingresa x"
		fi 
		echo "toy afuera pero abajo del loop"
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
	echo ""
        echo -n "$numero1resta - $numero2resta = "
	echo "scale =2 ; $numero1resta - $numero2resta" | bc
	echo ""
        echo -n "Volviendo al menu en: "
        for (( i=3; i>-1; i-- )); do
                sleep 1
                echo -n "$i"
                if [ "$i" -eq 3 ]; then
                        echo -n "..."
                elif [ "$i" -eq 2 ]; then
                        echo -n ".."
                elif [ "$i" -eq 1 ]; then
                        echo -n "."
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
	echo ""
        echo -n "$numero1multi x $numero2multi = "
	echo "scale =5 ; $numero1multi * $numero2multi" | bc
        echo ""
	echo -n "Volviendo al menu en: "
        for (( i=3; i>-1; i-- )); do
                sleep 1
                echo -n "$i"
                if [ "$i" -eq 3 ]; then
                        echo -n "..."
                elif [ "$i" -eq 2 ]; then
                        echo -n ".."
                elif [ "$i" -eq 1 ]; then
                        echo -n "."
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
	if [ "$numero2divi" -eq 0 ]; then
		echo -n "Error! Volviendo al menu en: "
                for (( i=3; i>0; i-- )); do
                        sleep 1
                        echo -n "$i"
                        if [ "$i" -eq 3 ]; then
                                echo -n "..."
                        elif [ "$i" -eq 2 ]; then
                                echo -n ".."
                        elif [ "$i" -eq 1 ]; then
                                echo -n "."
                        fi
                done
	else
        	echo -n "$numero1divi / $numero2divi = "
		echo "scale =2 ; $numero1divi / $numero2divi" | bc
		echo "" 
        	echo -n "Volviendo al menu en: "
        	for (( i=3; i>-1; i-- )); do
                	sleep 1
                	echo -n "$i"
                	if [ "$i" -eq 3 ]; then
                       		echo -n "..."
                	elif [ "$i" -eq 2 ]; then
                        	echo -n ".."
                	elif [ "$i" -eq 1 ]; then
                        	echo -n "."
                	fi
        	done
 
	fi
elif [ "$opcion" -eq 0 ]; then 
	clear
	break;
fi
done

