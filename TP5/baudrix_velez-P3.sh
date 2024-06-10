while true; do
clear
echo "Opcion[1] - Suma"
echo "Opcion[2] - Resta"
echo "Opcion[3] - Multiplicacion"
echo "Opcion[4] - Division"
echo "Ingresa tu eleccion"
read opcion

if [ "$opcion" -eq 1 ]; then
	clear
	echo "SUMA"
	echo "Ingresa un numero para sumar"
	read numero1suma
	echo "Ingresa otro numero para sumar"
	read numero2suma
	let suma=$numero1suma+$numero2suma
	echo "$numero1suma + $numero2suma = $suma"
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
elif [ "$opcion" -eq 2 ]; then 
	clear
        echo "RESTA"
        echo "Ingresa un numero para ser restado"
        read numero1resta
        echo "Ingresa el numero que le quieres restar"
        read numero2resta
        let resta=$numero1resta-$numero2resta
        echo "$numero1resta - $numero2resta = $resta"
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
        echo "MULTIPLICACION"
        echo "Ingresa un numero para ser multiplicado"
        read numero1multi
        echo "Ingresa el numero por el que lo quieres multiplicar"
        read numero2multi
        let multi=$numero1multi*$numero2multi
        echo "$numero1multi x $numero2multi = $multi"
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
        echo "DIVISION"
        echo "Ingresa un numerador de la division"
        read numero1divi
        echo "Ingresa el denominador de la division"
        read numero2divi
	echo "$numero1divi"
	echo "$numero2divi"
	if [ "$numero2vidi" -eq 0 ]; then
		echo "Error!"
	else 
        	divi=$((numero1divi / numero2divi))
        	echo "$numero1divi / $numero2divi = $divi"
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
fi
done

