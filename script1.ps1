# ID del archivo en Google Drive
$FILE_ID = "12hF73fncNh4BkoeCI2Rt_RaIGxYWPNF_"

# Ruta de destino del ZIP
$DEST = "$HOME\Desktop\PC.zip"

# URL de descarga directa
$URL = "https://drive.google.com/uc?export=download&id=$FILE_ID"

Write-Host "Descargando archivo..."
Invoke-WebRequest -Uri $URL -OutFile $DEST

Write-Host "Extrayendo..."
Expand-Archive -Path $DEST -DestinationPath "$HOME\Desktop\PC" -Force

Write-Host "Eliminando el archivo zip..."
Remove-Item $DEST

Write-Host "¡Listo! Carpeta descargada en tu escritorio."
