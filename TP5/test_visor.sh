graphics() {
	titulo=$1
	echo "###############################"
	echo "#            $titulo             #"
	echo "###############################"
}

div_cero() {
echo -n "Error! No es posible dividir por 0"
echo ""
while true; do
      read -p "Ingresa x para volver al menu: " volver
      if [[ $volver == $'x' ]]; then
         break
      else
         echo "Opcion invalida, para volver al menu ingresa x"
      fi
done
}

calculator() {

clear
graphics "$1"
read num1

clear
cad=$num1$2
graphics "$1"
read -p "$cad" num2

if [[ $2 = "/" && $num2 = 0 ]]; then
	div_cero
fi

clear
graphics "$1"
total=$(echo "scale=5; $num1 $2 $num2" | bc)
echo "$num1 $2 $num2 = $total"

}

calculator "DVISION" "/"

