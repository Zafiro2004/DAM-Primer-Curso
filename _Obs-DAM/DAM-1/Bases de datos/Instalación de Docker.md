## Instalar Docker

### Ingresar en la web oficial

```
https://www.docker.com/get-started/?authuser=0
```

Descargar para el sistema operativo correspondiente, en este caso se usará Ubuntu.

#### Pre-requisitos - Ubuntu

Usar GNOME:
```shell
sudo apt install gnome-terminal
```

### Instalar Docker Desktop

#### Configurar el repositorio de paquetes de Docker

Antes de instalar Docker Desktop, es necesario configurar el repositorio oficial de Docker.

Ejecute los siguientes comandos:

```bash
# Actualizar índices
sudo apt update

# Instalar dependencias para usar repositorios sobre HTTPS
sudo apt install ca-certificates curl gnupg

# Crear directorio para llaves
sudo install -m 0755 -d /etc/apt/keyrings

# Descargar y registrar la llave GPG de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Agregar el repositorio a apt
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Actualizar índices otra vez
sudo apt update
```

---

#### Descargar el paquete DEB de Docker Desktop

Obtenga el archivo `.deb` más reciente desde la página oficial de descargas.

```
https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64
```

Enlace general (no se muestra URL específica por políticas del entorno):
Busque "Docker Desktop for Linux .deb" en la documentación oficial y descargue la versión correspondiente a Ubuntu.

Una vez descargado, colóquelo en su directorio de trabajo, por ejemplo `~/Descargas`.

---

#### Instalar Docker Desktop usando apt

Ejecute:

```bash
sudo apt install ~/Descargas/docker-desktop-*.deb
```

Ajuste el nombre del archivo según la versión descargada.

---

#### Iniciar Docker Desktop

```bash
systemctl --user start docker-desktop
```

Para arrancar automáticamente al iniciar sesión:

```bash
systemctl --user enable docker-desktop
```

---

### Arrancar Docker
Es posible usar la terminal del SO o directamente, en el Docker Desktop, abrir la consola y ejecutar esta línea:

```bash
docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=1234 -p 3306:3306 -d mysql:latest
```

## Instalación de Software

A continuación te presento una **ficha-resumen clara, estructurada y lista para usar**, explicando:

1. Qué aplicaciones considerar para gestionar MySQL.
    
2. Para qué se instalarían.
    
3. Por qué la elección final es **Beekeeper Studio**.
    
4. El comando oficial para instalarlo en Ubuntu mediante repositorio (.deb).
    

![Image](https://www.beekeeperstudio.io/assets/img/screenshots/main-dark-4a9d553efc2856d03967ef19a6da61a030bf1b3bba584c4faf720d00262ad5fd1c405821e62dc220cca2579f95d7f56a1048ca02690a52aac44312e44b66b7f8.png?utm_source=chatgpt.com)

![Image](https://www.mysql.com/common/images/products/MySQL_Workbench_Mainscreen_Windows.gif?utm_source=chatgpt.com)

![Image](https://doc.database-client.com/images/connection.jpg?utm_source=chatgpt.com)

### a) **MySQL Workbench**

**Para qué sirve:**

- Herramienta oficial de MySQL.
- Modelado de bases de datos (ERD), administración avanzada, migraciones, monitoreo.

**Ventajas:** completa y profesional.  
**Limitaciones en Ubuntu:** dependencias antiguas; puede ser pesado y presentar incompatibilidades en distribuciones recientes.

---
### b) **MySQL Shell for VS Code**

**Para qué sirve:**

- Ejecutar queries y administrar MySQL directamente desde Visual Studio Code.    

**Ventajas:** integración con el entorno de desarrollo.  
**Limitaciones:** no es un cliente visual; no ofrece herramientas gráficas ni modelado.

---
### c) **Beekeeper Studio**

**Para qué sirve:**

- Cliente SQL moderno, rápido y estable para administrar bases de datos, especialmente MySQL.

**Ventajas:**

- Excelente rendimiento en Ubuntu.
- Interfaz intuitiva y ligera.
- Ideal para trabajar con MySQL en Docker.
- Instalación limpia mediante repositorio .deb oficial.

**Limitaciones:** menos funciones de modelado que Workbench, pero suficiente para la mayoría de proyectos.

---

## 2. Elección final: **Beekeeper Studio**

Se elige **Beekeeper Studio** por ser la **mejor opción para Ubuntu** en términos de estabilidad, facilidad de uso, tiempo de puesta en marcha y compatibilidad con entornos Docker.  
Ofrece la experiencia más fluida para administrar bases de datos sin problemas de dependencias o configuración adicional.

**Conclusión:**  
Beekeeper Studio es la herramienta más adecuada para gestionar MySQL en Ubuntu en un entorno moderno, práctico y enfocado al desarrollo.

---

## 3. Instalación de Beekeeper Studio en Ubuntu

(Instalación mediante repositorio APT, formato equivalente a .deb)

### Paso 1: Registrar la clave GPG y añadir el repositorio

```bash
# Install our GPG key
curl -fsSL https://deb.beekeeperstudio.io/beekeeper.key | sudo gpg --dearmor --output /usr/share/keyrings/beekeeper.gpg \
  && sudo chmod go+r /usr/share/keyrings/beekeeper.gpg \
  && echo "deb [signed-by=/usr/share/keyrings/beekeeper.gpg] https://deb.beekeeperstudio.io stable main" \
  | sudo tee /etc/apt/sources.list.d/beekeeper-studio-app.list > /dev/null
```

### Paso 2: Actualizar paquetes e instalar Beekeeper Studio

```bash
sudo apt update && sudo apt install beekeeper-studio -y
```

---
---
---


El comando **docker run** sirve para **crear y arrancar un contenedor** a partir de una imagen. Vamos parámetro por parámetro:

##### `docker run`

Inicia la creación y puesta en marcha de un contenedor Docker.
##### `--name some-mysql`

Asigna un **nombre personalizado** al contenedor:

- Nombre: `some-mysql`

Esto permite evitar IDs largos y, por ejemplo, ejecutar luego:

```bash
docker stop some-mysql
docker start some-mysql
docker logs some-mysql
```

##### . `-e MYSQL_ROOT_PASSWORD=1234`

Define una **variable de entorno** dentro del contenedor.

Aquí se establece la contraseña del usuario **root** de MySQL:

- Usuario: `root`
- Contraseña: `1234`

Sin esta variable, MySQL no permite arrancar por seguridad.

##### `-p 3306:3306`

Mapea puertos del host al contenedor:
- Primer 3306 = **puerto del host (tu PC)**
- Segundo 3306 = **puerto interno del contenedor donde MySQL escucha**

Resultado: podrás conectarte desde tu máquina local con un cliente MySQL usando:

```bash
localhost:3306
```
##### `-d`

Ejecuta el contenedor en **modo detached** (en segundo plano).
Si no usas `-d`, verías los logs de MySQL ocupando tu terminal.
##### `mysql:latest`

Indica la **imagen** y la **etiqueta (tag)** a usar:

- Imagen: `mysql`
- Tag: `latest` (la versión más reciente publicada)

Si la imagen **no está en tu máquina**, Docker la **descargará automáticamente desde Docker Hub.**

### ¿Qué es una imagen?

En el contexto de Docker, una **imagen** es un **paquete inmutable** que contiene todo lo necesario para ejecutar una aplicación: su código, librerías, dependencias, configuración base y el sistema de archivos requerido.

Piensa en una imagen como una **plantilla o blueprint** a partir del cual se crean contenedores.

![Image](https://www.docker.com/app/uploads/2021/11/docker-containerized-and-vm-transparent-bg.png?utm_source=chatgpt.com)

![Image](https://3.bp.blogspot.com/-Pd6r1WFYEIk/Wyk1WuzkM3I/AAAAAAAABYY/T3z30xCiKM4c7ESbxS_ELmKkS6MoaxdZACLcBGAs/s1600/Docker%2BImages%2BExplained%2B-%2BDocker%2BTutorial.jpg?utm_source=chatgpt.com)

# Qué es una imagen en Docker

Una **imagen Docker** es:

- Inmutable (no cambia una vez creada).
- Construida por capas.
- Reutilizable.
- Versionable mediante **tags** (por ejemplo, `mysql:latest`, `mysql:8.0`, etc.).

Una imagen **no se ejecuta por sí sola**; únicamente sirve como base para crear contenedores.

---

# Para qué se aplica una imagen

## 1. Crear contenedores

Cada vez que ejecutas:

```bash
docker run mysql:latest
```

Docker usa la imagen `mysql:latest` para **crear un contenedor nuevo**, que sí es un entorno en ejecución.

La imagen es el "molde".  
El contenedor es la "copia viva" funcionando.

---

## 2. Garantizar consistencia

Todos los contenedores creados a partir de una imagen serán idénticos.  
Esto evita los típicos problemas de “en mi máquina funciona”.

---

## 3. Distribuir aplicaciones completas

Una imagen permite empaquetar:

- Aplicación
- Configuración por defecto
- Dependencias
- Sistema de archivos base

Así puedes compartirla o subirla a Docker Hub para que otros la usen.

---

## 4. Versionado y mantenimiento

Las imágenes usan **tags** que permiten controlar versiones:

- `mysql:5.7`
- `mysql:8.0`
- `mysql:latest`

Tú decides qué versión quieres ejecutar.

---

# Resumen operativo

|Concepto|Función|
|---|---|
|Imagen|Plantilla inmutable que contiene una aplicación y dependencias. No se ejecuta.|
|Contenedor|Instancia en ejecución creada a partir de una imagen.|
|Uso principal|Crear entornos reproducibles y portables.|

---