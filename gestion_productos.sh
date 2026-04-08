#!/bin/bash

# ============================================
# Script: gestion_productos.sh
# Descripción: Gestión de estructura de empresa
# ============================================

# --- Validación: evitar crear carpetas si ya existen ---
if [ -d "empresa" ]; then
    echo "La carpeta empresa ya existe, continuando..."
else
    mkdir empresa
    echo "Carpeta empresa creada."
fi

# --- Entrar a la carpeta principal ---
cd empresa

# --- Crear subcarpetas ---
mkdir -p productos ventas reportes backup
echo "Subcarpetas creadas: productos, ventas, reportes, backup"

# --- Crear archivos de productos ---
touch productos/producto1.txt productos/producto2.txt productos/producto3.txt

# --- Escribir contenido en cada archivo ---
echo "Laptop Dell - Precio: $1500" > productos/producto1.txt
echo "Mouse Logitech - Precio: $30" > productos/producto2.txt
echo "Teclado Mecánico - Precio: $80" > productos/producto3.txt

# --- Mostrar contenido de un archivo ---
echo ""
echo "=== Contenido de producto1.txt ==="
cat productos/producto1.txt

# --- Copiar archivo a backup ---
cp productos/producto1.txt backup/producto1_backup.txt
echo "Archivo copiado a backup."

# --- Renombrar un archivo ---
mv productos/producto3.txt productos/teclado.txt
echo "producto3.txt renombrado a teclado.txt"

# --- Crear reporte general ---
echo "Reporte generado el $(date)" > reportes/reporte_general.txt

# --- Eliminar un archivo ---
rm productos/producto2.txt
echo "producto2.txt eliminado."

# --- Crear README ---
echo "Este proyecto gestiona la estructura de archivos de una empresa." > README.txt

# --- Mostrar estructura final ---
echo ""
echo "=== Estructura final ==="
ls -R

# --- Menú simple ---
echo ""
echo "=== MENÚ ==="
echo "1. Ver productos"
echo "2. Ver backup"
echo "3. Ver reportes"
echo "4. Salir"
read -p "Elegí una opción: " opcion

case $opcion in
    1) ls productos/ ;;
    2) ls backup/ ;;
    3) ls reportes/ ;;
    4) echo "Saliendo..." ;;
    *) echo "Opción inválida" ;;
esac
