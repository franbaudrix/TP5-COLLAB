API_KEY="bcda1f43e3d340b7b1701001241106"
CIUDAD="Bahia%20Blanca"

URL="https://api.weatherapi.com/v1/current.json?key=$API_KEY&q=$CIUDAD&aqi=yes"

response=$(curl -s "$URL")

#chequea si hay un error antes de obtener la temperatura
if [ "$?" -ne 0 ]; then
	echo "Error"
	exit 1
fi

temperature=$(echo "$response" | jq '.current.temp_c')

echo "EL clima actual de $CIUDAD  es ${temperature}"

