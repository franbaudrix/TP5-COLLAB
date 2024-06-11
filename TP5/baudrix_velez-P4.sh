filepath="/home/karim/Escritorio/TP5-COLLAB/TP5/textoDePrueba"

letras=$(wc -m < "$filepath")

echo "El archivo textoDePrueba tiene $letras letras"

palabras=$(wc -w < "$filepath")

echo "El archivo textoDePrueba tiene $palabras palabras"

lineas=$(wc -l < "$filepath")

echo "El archivo textoDePrueba tiene $lineas lineas"

