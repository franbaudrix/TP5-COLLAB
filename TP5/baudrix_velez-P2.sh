#piedra 1
#papel 2
#tijeras 3

while true;
do
clear
echo "Ingrese 1 para Piedra, 2 para Papel y 3 para Tijeras"
read eleccion_usuario
eleccion_maquina=$(((RANDOM % 3) + 1))

if [ "$eleccion_maquina" -eq 1 ]; then
	if [ "$eleccion_usuario" -eq 2 ]; then
		echo "Me ganaste conchudito, yo elegi piedra"
	elif [ "$eleccion_usuario" -eq 3 ]; then
		echo "Perdiste down, elegi piedra"
	else
		echo "Empatamos tenemos cancer, elegimos piedra"
	fi
sleep 3
elif [ "$eleccion_maquina" -eq 2 ]; then
        if [ "$eleccion_usuario" -eq 3 ]; then
                echo "Me ganaste conchudito, yo elegi papel"
        elif [ "$eleccion_usuario" -eq 1 ]; then
                echo "Perdiste down, elegi papel"
        else
                echo "Empatamos tenemos cancer, elegimos papel"
        fi
sleep 3
else
	if [ "$eleccion_usuario" -eq 1 ]; then
                echo "Me ganaste conchudito, elegi tijera"
        elif [ "$eleccion_usuario" -eq 2 ]; then
                echo "Perdiste down, elegi tijera"
        else
                echo "Empatamos tenemos cancer, elegimos tijera"
        fi
sleep 3
fi

done
