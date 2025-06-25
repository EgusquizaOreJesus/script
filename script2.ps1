# ID del archivo en Google Drive
$FILE_ID = "1zgUpe7Y0cHHuYN3zdciuw9YFi0ltY0su"

# Ruta de destino del ZIP
$DEST = "$HOME\Desktop\PC2.zip"

# URL de descarga directa
$URL = "https://drive.google.com/uc?export=download&id=$FILE_ID"

Write-Host "Descargando archivo..."
Invoke-WebRequest -Uri $URL -OutFile $DEST

Write-Host "Extrayendo..."
Expand-Archive -Path $DEST -DestinationPath "$HOME\Desktop\selfie-labs-2025" -Force

Write-Host "Eliminando el archivo zip..."
Remove-Item $DEST

Write-Host "¡Listo! Carpeta descargada en tu escritorio."
