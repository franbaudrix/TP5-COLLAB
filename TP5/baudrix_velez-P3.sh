div_cero() {
	echo ""
	echo "Error! No es posible dividir por 0"
	echo ""
	while true; do
      		read -p "Ingresa x para volver al menu: " volver
      		if [[ $volver == $'x' ]]; then
         		break
      		else
			echo ""
         		echo "Error! Opcion inexistente"
      			echo ""
		fi
	done
}

hacer_cuenta_y_error_handling() {
	local numero1="$numero1"
	local numero2="$numero2"
	local operacion="$operacion"
	if [[ $operacion = "/" && $numero2 = 0 ]]; then
		div_cero
	elif [ "$(echo "$numero2" | bc)" != "$numero2" ]; then
                zenity --error --no-wrap \
			--text="Ingresaste un valor incorrecto,\nsolo podes ingresar numeros!"
        elif [ "$(echo "$numero1" | bc)" != "$numero1" ]; then
		zenity --error --no-wrap \
			--text="Ingresaste un valor incorrecto,\nsolo podes ingresar numeros!"
        else
		total=$(echo "scale=5; $numero1 $operacion $numero2" | bc)
                echo ""
                echo "--> $numero1 $operacion $numero2 = $total"
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
echo "# Opcion[5] - Manual De Uso   #"
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
	hacer_cuenta_y_error_handling numero1 numero2 operacion
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
	hacer_cuenta_y_error_handling numero1 numero2 operacion
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
	hacer_cuenta_y_error_handling numero1 numero2 operacion
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
	hacer_cuenta_y_error_handling numero1 numero2 operacion
elif [ "$opcion" -eq 5 ]; then
	zenity --info --no-wrap \
               --text="MANUAL DE USO\n\nLa calculadora funciona de tal manera y cuando estas ahi pasa tal xd lol\nydespues hace tal y tal pero cuando vas a ahcer suma pasa otra cosa\nentonces en ese caso vamos a ser repiolas" 
elif [ "$opcion" -eq 0 ]; then
	clear
	break;
fi
done
