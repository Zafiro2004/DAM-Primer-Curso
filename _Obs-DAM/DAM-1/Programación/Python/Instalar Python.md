## Instalación de Python. Uso de Pip y Venv
## 1. Instalación de Python y componentes asociados

### 1.1 Instalación de Python

Python es un lenguaje de programación interpretado, de alto nivel y de propósito general. Para trabajar con proyectos en Python es imprescindible disponer de una instalación funcional del intérprete.

#### En sistemas GNU/Linux (Ubuntu)

Python suele venir instalado por defecto. Puede comprobarse mediante:

```bash
python3 --version
```

En caso de no estar instalado, se realiza mediante el gestor de paquetes del sistema:

```bash
sudo apt update
sudo apt install python3
```

#### En sistemas Windows

Python debe descargarse desde su sitio oficial:

* [https://www.python.org](https://www.python.org)

Durante la instalación es importante marcar la opción **“Add Python to PATH”**, para permitir su uso desde la consola.

---

## 1.2 Componentes adicionales recomendados

Además del intérprete, es recomendable disponer de los siguientes componentes:

* **pip**: gestor de paquetes de Python.
* **venv**: módulo estándar para la creación de entornos virtuales.

En Ubuntu, pueden instalarse con:

```bash
sudo apt install python3-pip python3-venv
```

En Windows, ambos se incluyen por defecto con la instalación estándar de Python.

---

## 2. pip: gestor de paquetes de Python

### 2.1 Definición

`pip` es el gestor de paquetes oficial de Python. Permite instalar, actualizar y eliminar bibliotecas externas que no forman parte de la biblioteca estándar del lenguaje.

Su función es comparable a otros gestores como `apt` (Linux) o `npm` (Node.js), pero específico del ecosistema Python.

---

### 2.2 Instalación de pip

#### Ubuntu

Normalmente se instala mediante:

```bash
sudo apt install python3-pip
```

Verificación:

```bash
pip --version
```

#### Windows

`pip` se instala automáticamente junto con Python. Puede verificarse desde la consola:

```powershell
pip --version
```

---

### 2.3 Uso básico de pip

Algunos comandos fundamentales son:

* Instalar un paquete:

```bash
pip install nombre_paquete
```

* Actualizar un paquete:

```bash
pip install --upgrade nombre_paquete
```

* Eliminar un paquete:

```bash
pip uninstall nombre_paquete
```

Es importante destacar que `pip` instala los paquetes **en el entorno Python activo**, lo que introduce la necesidad de utilizar entornos virtuales.

---

## 3. venv: entornos virtuales en Python

### 3.1 Definición

`venv` es un módulo incluido en la biblioteca estándar de Python que permite crear **entornos virtuales**.
Un entorno virtual es una copia aislada del intérprete de Python junto con sus dependencias, independiente del sistema y de otros proyectos.

El objetivo principal de `venv` es evitar conflictos entre versiones de librerías utilizadas por distintos proyectos.

---

### 3.2 Instalación de venv

#### Ubuntu

Se instala mediante:

```bash
sudo apt install python3-venv
```

#### Windows

`venv` viene incluido por defecto con Python y no requiere instalación adicional.

---

### 3.3 Creación y uso de un entorno virtual

#### Creación del entorno

Dentro de la carpeta del proyecto:

```bash
python3 -m venv venv
```

Esto crea un directorio llamado `venv` que contiene el entorno aislado.

---

#### Activación del entorno

* **Linux / macOS**:

```bash
source venv/bin/activate
```

* **Windows (PowerShell)**:

```powershell
venv\Scripts\Activate.ps1
```

Al activarse, la consola muestra el prefijo `(venv)`, indicando que el entorno está activo.

---

#### Uso del entorno

Una vez activado:

* Los comandos `python` y `pip` apuntan al entorno virtual.
* Las librerías instaladas con `pip` se almacenan exclusivamente dentro del directorio `venv`.

Para salir del entorno:

```bash
deactivate
```

---

## 4. Creación correcta de un proyecto Python

### 4.1 Estructura recomendada

Un proyecto Python estándar debe organizarse de la siguiente forma:

```
mi_proyecto/
├ venv/
├ main.py
├ requirements.txt
```

* `venv/`: entorno virtual del proyecto.
* `main.py`: archivo principal del programa.
* `requirements.txt`: lista de dependencias del proyecto (opcional pero recomendado).

---

### 4.2 Flujo de trabajo correcto

1. Crear la carpeta del proyecto.
2. Crear el entorno virtual dentro del proyecto.
3. Activar el entorno virtual.
4. Instalar dependencias con `pip`.
5. Desarrollar y ejecutar el código.
6. Desactivar el entorno al finalizar.

Este flujo garantiza aislamiento, reproducibilidad y estabilidad del proyecto.

---

## 5. Diferencias entre Linux y Windows

### 5.1 Cambios relevantes

| Aspecto            | Linux (Ubuntu)             | Windows                     |
| ------------------ | -------------------------- | --------------------------- |
| Instalación Python | Normalmente preinstalado   | Descarga manual             |
| pip                | Instalación separada       | Incluido                    |
| venv               | Instalación separada       | Incluido                    |
| Activación venv    | `source venv/bin/activate` | `venv\Scripts\Activate.ps1` |
| Rutas              | `/home/usuario/`           | `C:\Users\Usuario\`         |

---

### 5.2 Conclusión sobre compatibilidad

El **concepto, uso y finalidad de `pip` y `venv` es exactamente el mismo** en ambos sistemas.
Las diferencias se limitan a comandos de activación y rutas del sistema de archivos.

---

### Conclusión general

El uso combinado de Python, `pip` y `venv` constituye la base de un entorno de desarrollo Python moderno y profesional.
`pip` permite la gestión de dependencias, mientras que `venv` garantiza el aislamiento entre proyectos, evitando conflictos y problemas de mantenimiento.
Este enfoque es estándar tanto en entornos académicos como en contextos profesionales e industriales.










Conceptos nuevos que colocar
Hotpat - Punto donde un programa ejecuta un gran numero de cálculos (colisiones, gráficos, posición...)
SpatialGrid - Reduces los cálculos a una cuadrícula
Propuesta: Crear el sistema de laberinto en Unity