echo -n "Ingrese 1 para iniciar el cronometro: "
read opcion

cont=0;

while [ "$opcion" -eq 1 ]; do
	clear
	let cont=cont+1
	echo "Cronometro: $cont"
	echo -n "Si desea parar el cronometro, ingrese 2, para reiniciarlo ingrese 3: "
	read -t 1 opcion
	if [[ "$opcion" =~ ^[0-9]+$ ]]; then
	 	if [ "$opcion" -eq 3 ]; then
                	let cont=0
                	opcion=1
        	fi
	fi

	#comprueba si lo ingresado es un numero, si no lo es entonces le asigna 1 para que continue	
	if ! [[ "$opcion" =~ ^[0-9]+$ ]] then
		opcion=1
	fi
done
