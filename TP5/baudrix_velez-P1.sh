numero_random=$(((RANDOM % 100) + 1))
iterador=5
while true;
do

echo "Ingrese un numero para intentar adivinar el que estoy pensando: "
read numero_adivinado
if [ "$iterador" -eq 1 ]; then
	echo -e "Perdiste! Te quedaste sin turnos\n"
	break
elif [ "$numero_adivinado" -gt "$numero_random" ]; then
	echo -e  "---El numero que estoy pensando es menor a $numero_adivinado---"
	((iterador--))
        echo -e "--Turnos restantes: $iterador--\n"

elif [ "$numero_adivinado" -lt "$numero_random" ]; then
	echo -e "---El numero que estoy pensando es mayor a $numero_adivinado---"
	((iterador--))
        echo -e "--Turnos restantes: $iterador--\n"

else
	echo -e "---Felicidades! Lo adivinaste!---\n"
        	break
fi

done
