API_KEY="bcda1f43e3d340b7b1701001241106"
CIUDAD="Bahia%20Blanca"

URL="https://api.weatherapi.com/v1/current.json?key=$API_KEY&q=$CIUDAD&aqi=yes"

#toma los valores de la api
response=$(curl -s "$URL")

#chequea si hay un error antes de obtener la temperatura
if [ "$?" -ne 0 ]; then
	echo "Error"
	exit 1
fi

#obtiene el valor de la temperatura desde la api
TEMPERATURA=$(echo "$response" | jq '.current.temp_c')
FECHA=$(echo "$response" | jq '.current.last_updated')


#reemplaza el %20 del nombre de la ciudad por un espacio
CIUDAD=$(echo "$CIUDAD" | sed 's/%20/ /g')

clear
echo "La temperatura actual de $CIUDAD es $TEMPERATURA°C"
echo ""
echo "Actualizado al $FECHA"
