echo -n "Ingrese el nombre que desea conocer su edad promedio: "
read NOMBRE

URL="https://api.agify.io/?name=$NOMBRE"

response=$(curl -s "$URL")

EDAD=$(echo "$response" | jq ".age")

echo ""
echo "La edad promedio para el nombre ingresado es: $EDAD"
