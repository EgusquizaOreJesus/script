#!/bin/bash
# chmod +x script1.sh
# ID del archivo en Google Drive
FILE_ID="1zgUpe7Y0cHHuYN3zdciuw9YFi0ltY0su"

# Ruta de destino
DEST="$HOME/Desktop/PC2.zip"

# Descargar archivo
echo "Descargando archivo..."
wget --no-check-certificate "https://drive.google.com/uc?export=download&id=$FILE_ID" -O "$DEST"

# Extraer
echo "Extrayendo..."
unzip -o "$DEST" -d "$HOME/Desktop/PC2"

# Eliminar archivo ZIP
rm "$DEST"

echo "¡Listo! Carpeta descargada en tu escritorio."
