#!/bin/bash

# Ruta de instalación de Pterodactyl
PTERO_DIR="/var/www/pterodactyl"

# URL del repositorio del tema
THEME_REPO="https://github.com/Nookure/NookTheme"

# URL del archivo de instalación del tema
INSTALL_SCRIPT_URL="https://raw.githubusercontent.com/Nookure/NookTheme/main/install.sh"

# Verificar si el directorio de Pterodactyl existe
if [ ! -d "$PTERO_DIR" ]; then
  echo "El directorio $PTERO_DIR no existe. Asegúrate de que Pterodactyl está instalado."
  exit 1
fi

# Cambiar al directorio de Pterodactyl
cd "$PTERO_DIR" || exit

# Descargar el script de instalación del tema
echo "Descargando el script de instalación del tema..."
curl -o install_nooktheme.sh "$INSTALL_SCRIPT_URL"

# Hacer que el script sea ejecutable
chmod +x install_nooktheme.sh

# Ejecutar el script de instalación
echo "Instalando el tema NookTheme..."
./install_nooktheme.sh

# Limpiar archivos temporales
rm install_nooktheme.sh

echo "Tema NookTheme instalado correctamente."
