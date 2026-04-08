# Trabajo Práctico — Script Bash con Docker

**Alumno:** Franco Valentin


## ¿Qué hace el script?

El script `gestion_productos.sh` automatiza la creación de una estructura de carpetas y archivos que simula el sistema de archivos de una empresa. Al ejecutarlo, el script crea una carpeta principal llamada `empresa` con cuatro subcarpetas: `productos`, `ventas`, `reportes` y `backup`. Dentro de `productos` crea tres archivos de texto con contenido, luego realiza operaciones sobre ellos como copiar, renombrar y eliminar. Al final muestra la estructura generada y presenta un menú interactivo para navegar entre las carpetas.

---

## ¿Qué comandos de Linux usé?

| Comando   | Para qué lo usé                                                |
| --------- | ---------------------------------------------------------------- |
| `pwd`   | Ver en qué carpeta estaba parado                                |
| `ls`    | Listar el contenido de las carpetas                              |
| `cd`    | Moverme dentro de las carpetas                                   |
| `mkdir` | Crear las carpetas empresa, productos, ventas, reportes y backup |
| `touch` | Crear los archivos producto1.txt, producto2.txt y producto3.txt  |
| `cat`   | Mostrar el contenido de producto1.txt en pantalla                |
| `cp`    | Copiar producto1.txt a la carpeta backup                         |
| `mv`    | Renombrar producto3.txt a teclado.txt                            |
| `rm`    | Eliminar producto2.txt                                           |
| `chmod` | Darle permisos de ejecución al script con `chmod +x`          |

---

## ¿Para qué sirve `chmod +x`?

`chmod` significa *change mode* y sirve para cambiar los permisos de un archivo. El `+x` le agrega el permiso de ejecución, lo que permite correr el archivo como un programa. Sin este paso, al intentar ejecutar el script con `./gestion_productos.sh` el sistema devuelve un error de permisos. Es necesario hacerlo una sola vez antes de ejecutar el script por primera vez.

```bash
chmod +x gestion_productos.sh
./gestion_productos.sh
```

---

## ¿Qué diferencia hay entre `cp` y `mv`?

**`cp`** copia un archivo de un lugar a otro. El archivo original se mantiene y queda una copia en el destino. Es como sacar una fotocopia.

**`mv`** mueve o renombra un archivo. El archivo original desaparece y aparece en el nuevo destino. También se usa para renombrar sin cambiar de carpeta. Es como cortar y pegar.

```bash
cp producto1.txt backup/   # producto1.txt sigue existiendo en productos/
mv producto3.txt teclado.txt  # producto3.txt ya no existe, ahora es teclado.txt
```

---

## ¿Qué pasaría si no uso `cd` correctamente?

Si no uso `cd` correctamente, los archivos y carpetas se crearían en el lugar equivocado. Por ejemplo, si no hago `cd empresa` antes de crear las subcarpetas, éstas se crearían en `/app` en lugar de dentro de `empresa`. Esto rompería toda la estructura del proyecto y los comandos posteriores fallarían porque no encontrarían los archivos donde se espera que estén.

---

## ¿Qué aprendí en esta práctica?

En esta práctica aprendí a levantar un contenedor Ubuntu usando Docker y a moverme dentro de su sistema de archivos desde la terminal. Aprendí a crear y ejecutar un script Bash que automatiza tareas que normalmente haría manualmente, como crear carpetas y archivos, copiar, renombrar y eliminar. También entendí cómo funcionan los permisos en Linux con `chmod`, y la diferencia entre copiar y mover archivos. Me resultó muy útil ver cómo Docker permite tener un entorno Linux aislado corriendo dentro de mi Mac sin necesidad de instalar un sistema operativo completo.

---

## Estructura generada por el script

```
empresa/
├── productos/
│   ├── producto1.txt
│   └── teclado.txt
├── ventas/
├── reportes/
│   └── reporte_general.txt
├── backup/
│   └── producto1_backup.txt
└── README.txt
```

---

## Cómo ejecutar

```bash
# 1. Buildear la imagen
docker build -t mi-ubuntu .

# 2. Levantar el contenedor
docker run -it mi-ubuntu

# 3. Dentro del contenedor, dar permisos y ejecutar
chmod +x gestion_productos.sh
./gestion_productos.sh
```
