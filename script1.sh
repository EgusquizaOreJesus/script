#!/bin/bash
# chmod +x script1.sh
# ID del archivo en Google Drive
FILE_ID="12hF73fncNh4BkoeCI2Rt_RaIGxYWPNF_"

# Ruta de destino
DEST="$HOME/Desktop/PC.zip"

# Descargar archivo
echo "Descargando archivo..."
wget --no-check-certificate "https://drive.google.com/uc?export=download&id=$FILE_ID" -O "$DEST"

# Extraer
echo "Extrayendo..."
unzip -o "$DEST" -d "$HOME/Desktop/PC"

# Eliminar archivo ZIP
rm "$DEST"

echo "¡Listo! Carpeta descargada en tu escritorio."
