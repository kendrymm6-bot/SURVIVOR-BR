#!/bin/bash

# Salir si hay errores
set -e

echo "🚀 Iniciando compilación de 🇧🇷 SURVIVOR-BR 🇧🇷..."

# Limpiar restos de compilaciones anteriores
make clean

# Configurar las arquitecturas para iPhone 14 (arm64 y arm64e)
export ARCHS="arm64 arm64e"

# Compilar el paquete final
make package FINALPACKAGE=1

echo "✅ Compilación exitosa."
echo "📦 El archivo .deb está listo en la carpeta /packages"
