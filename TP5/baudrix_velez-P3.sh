hacer_cuenta() {
	local numero1="$numero1"
	local numero2="$numero2"
	local operacion="$operacion"
	total=$(echo "scale=5; $numero1 $operacion $numero2" | bc)
	if [ "$(echo "$numero2" | bc)" != "$numero2" ]; then
                echo ""
                echo "Ingresaste un valor incorrecto, solo podes ingresar numeros!"
                echo ""
        elif [ "$(echo "$numero1" | bc)" != "$numero1" ]; then
                echo ""
                echo "Ingresaste un valor incorrecto, solo podes ingresar numeros!"
                echo ""
        else
                echo ""
                echo "--> $numero1 $operacion $numero2 = $total"
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
}

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
	operacion="+"
	echo "###############################"
	echo "#            SUMA             #"
	echo "###############################"
	echo -n "Ingresa un numero para sumar: "
	read numero1
	echo -n "Ingresa otro numero para sumar: "
	read numero2
	hacer_cuenta numero1 numero2 operacion
elif [ "$opcion" -eq 2 ]; then 
	clear
	operacion="-"
	echo "###############################"
        echo "#            RESTA            #"
        echo "###############################"
        echo -n "Ingresa un numero para ser restado: "
        read numero1
        echo -n "Ingresa el numero que le quieres restar: "
        read numero2
	hacer_cuenta numero1 numero2 operacion
elif [ "$opcion" -eq 3 ]; then
	clear
	operacion="*"
	echo "###############################"
        echo "#       MULTIPLICACION        #"
        echo "###############################"
        echo -n "Ingresa un numero para ser multiplicado: "
        read numero1
        echo -n "Ingresa el numero por el que lo quieres multiplicar: "
        read numero2
	hacer_cuenta numero1 numero2 operacion 
elif [ "$opcion" -eq 4 ]; then 
	clear
	operacion="/"
	echo "###############################"
        echo "#          DIVISION           #"
        echo "###############################"
        echo -n "Ingresa un numerador de la division: "
        read numero1
        echo -n "Ingresa el denominador de la division: "
        read numero2
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
	elif [ "$(echo "$numero2divi" | bc)" -eq 0 ]; then
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
		hacer_cuenta numero1divi numero2divi operacion
	fi
elif [ "$opcion" -eq 0 ]; then
	clear
	break;
fi
done
