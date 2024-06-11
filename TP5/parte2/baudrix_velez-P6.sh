echo -n "Ingrese la ciudad que desea consultar el clima: "
read CIUDAD

API_KEY="bcda1f43e3d340b7b1701001241106"

#convierte los espacios de la ciudad ingresada en %20 para ser utilizados en la url
CIUDAD=$(echo "$CIUDAD" | sed 's/ /%20/g')

URL="https://api.weatherapi.com/v1/current.json?key=$API_KEY&q=$CIUDAD&aqi=yes"

#toma los valores de la api
response=$(curl -s "$URL")

#obtiene la hora actual para luego chequear si este valor es null, si lo es significa que la ciudad
#ingresada no es valida

FECHA=$(echo "$response" | jq '.current.last_updated')

#chequea si hay un error antes de obtener los datos del clima
if [ "$?" -ne 0 ] || [ "$FECHA" = "null" ]; then
	echo "Error"
	exit 1
fi

#obtiene los datos del clima necesarios desde el response
TEMPERATURA=$(echo "$response" | jq '.current.temp_c')
TEXT=$(echo "$response" | jq '.current.condition.text')
HUMEDAD=$(echo "$response" | jq '.current.humidity')
VIENTO_VEL=$(echo "$response" | jq '.current.wind_kph')
VIENTO_DIR=$(echo "$response" | jq '.current.wind_dir')

#traduccion del texto
TEXT=$(trans -b :es "$TEXT")

#reemplaza el %20 del nombre de la ciudad por un espacio y las " por nada
CIUDAD=$(echo "$CIUDAD" | sed 's/%20/ /g')
TEXT=$(echo "$TEXT" | sed 's/"//g')
FECHA=$(echo "$FECHA" | sed 's/"//g')
VIENTO_DIR=$(echo "$VIENTO_DIR" | sed 's/"//g')


clear
#graficos para mostrar los datos del clima
echo " ############ CLIMA $CIUDAD ############"
echo ""
echo " Temperatura: $TEMPERATURA°C"
echo ""

echo -n " $TEXT"
#for loop usado para definir la distancia entre texto y direccion del viento
tamanio=${#TEXT}
let tamanio=27-tamanio
for i in $(seq 1 $tamanio)
do
echo -n " "
done
echo "$VIENTO_DIR"

echo -n " Humedad del $HUMEDAD%"
#for loop usado para definir la distancia entre humedad  y velocidad del viento
tamanio=${#HUMEDAD}
let tamanio=28-tamanio-14
for i in $(seq 1 $tamanio)
do
echo -n " "
done

echo "$VIENTO_VEL km/h"
echo ""
echo " Actualizado al $FECHA"
