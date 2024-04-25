#!/bin/bash

# Directorio base donde se encuentran los subdirectorios
BASE_DIR="/c/URV/ESO/eso_26/GARLIC_Progs"

# Directorio destino para los archivos .elf
DEST_DIR="/c/URV/ESO/eso_26/GARLIC_OS/nitrofiles/Programas"

# Navega al directorio base
cd "$BASE_DIR" || exit

# Bucle para procesar cada subdirectorio
for dir in */; do
    echo "Entrando en $dir"
    cd "$dir" || continue

    # Ejecutar make clean y make
    make clean
    make

    # Copiar archivos .elf al directorio destino
    cp *.elf "$DEST_DIR"

    # Volver al directorio base
    cd "$BASE_DIR" || exit
done

echo "Proceso completado."
