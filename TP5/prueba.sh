if zenity --entry \
--title="Añadir un perfil nuevo" \
--text="Escriba el nombre del perfil nuevo:" \
--entry-text "NewProfile"
  then ciudad ="$?"
  else echo "No ha especificado ningún nombre"
fi
echo "$ciudad"
