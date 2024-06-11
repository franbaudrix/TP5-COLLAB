URL="https://api.genderize.io/"

echo -n "Ingresa un nombre "

read nombre

informacion=$(curl -s "$URL?name=$nombre")

genero=$(echo "$informacion" | jq -r '.gender')
probabilidad=$(echo "$informacion" | jq -r '.probability')
cantidad=$(echo "$informacion" | jq -r '.count')

echo "GENERO DE TU NOMBRE"
echo "$genero"


