numero_random=$(((RANDOM % 100) + 1))

while true;
do

echo $numero_random
echo "Ingrese un numero para intentar adivinar el que estoy pensando: "
read numero_adivinado

if [ "$numero_adivinado" -gt "$numero_random" ]; then
        echo "El numero ingresado es mayor al que estoy pensando"
    elif [ "$numero_adivinado" -lt "$numero_random" ]; then
        echo "El numero ingresado es menor al que estoy pensando"
    else
        echo "Felicidades! Lo adivinaste!"
        break
fi

done