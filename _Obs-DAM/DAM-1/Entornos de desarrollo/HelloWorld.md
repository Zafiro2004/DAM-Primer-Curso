1. Descargar compiladores del lenguaje e instalarlo
2. Crear el archivo con la extensión correspondiente
3. Crear código, compilar y ejecutar

# JAVA
---
### 1. Verificar que tienes un compilador C++

```bash
javac -version
java -version
```

Si no está instalado:
```bash
sudo apt update
sudo apt install default-jdk
```

---
### 2. Crear el archivo del programa

```bash
nano HelloWorld.java
```

Hello World! en C++

```cpp
// Programa básico en Java que imprime "Hello, World!"
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}
```

---
### 3. Compilar el programa

En la terminal, escribe:

```bash
javac HelloWorld.java
```

Esto crea un archivo ejecutable llamado ``HelloWorld.class``.

---
### 4. Ejecutar el programa

Ahora ejecútalo con:

```bash
java HelloWorld
```

Deberías ver en pantalla:

```
Hello, World!
```

---
# C++
---
### 1. Verificar que tienes un compilador C++

```bash
g++ --version
```

Si no está instalado:
```bash
sudo apt update
sudo apt install g++
```

---

### 2. Crear el archivo del programa

```bash
nano helloworld.cpp
```

Hello World! en C++

```cpp
#include <iostream>
using namespace std;

int main() {
    cout << "Hello, World!" << endl;
    return 0;
}
```

---

### 3. Compilar el programa

En la terminal, escribe:

```bash
g++ helloworld.cpp -o helloworld
```

Esto crea un archivo ejecutable llamado `helloworld`.

---

### 4. Ejecutar el programa

Ahora ejecútalo con:

```bash
./helloworld
```

Deberías ver en pantalla:

```
Hello, World!
```

---
# Python

### 1. Verificar que tienes un intérprete de Python

```bash
python3 --version
```

Si no está instalado:

```bash
sudo apt update
sudo apt install python3
```

---

### 2. Crear el archivo del programa

```bash
code helloworld.py
```

Hello World! en Python

```python
# Programa básico en Python que imprime "Hello, World!"
print("Hello, World!")
```

---
### 3. (No se necesita compilar)

Python es un **lenguaje interpretado**, así que no es necesario compilar el programa.  
Puedes ejecutarlo directamente con el intérprete.

---

### 4. Ejecutar el programa

Ahora ejecútalo con:

```bash
python3 helloworld.py
```

Deberías ver en pantalla:

```
Hello, World!
```

---
#  (C#)

---

### 1. Verificar que tienes un compilador (C#)

```bash
dotnet --version
```

Si no está instalado:

```bash
sudo apt update
sudo apt install dotnet-sdk-8.0
```

_(Puedes reemplazar `8.0` por la versión estable más reciente disponible.)_

---

### 2. Crear el archivo del programa

```bash
nano HelloWorld.cs
```

Hello World! en C#

```csharp
// Programa básico en C# que imprime "Hello, World!"
using System;

class HelloWorld
{
    static void Main()
    {
        Console.WriteLine("Hello, World!");
    }
}
```

---

### 3. Compilar el programa

En la terminal, escribe:

```bash
mcs HelloWorld.cs
```

Esto crea un archivo ejecutable llamado `HelloWorld.exe`.

_(Si no tienes `mcs`, instálalo con `sudo apt install mono-complete`.)_

O si usas .NET moderno (SDK):

```bash
dotnet new console -o HelloWorldApp
cd HelloWorldApp
dotnet run
```

---

### 4. Ejecutar el programa ?????????

Si usaste **Mono**, ejecútalo con:

```bash
mono HelloWorld.exe
```

Si usaste **.NET SDK**, simplemente:

```bash
dotnet run
```

Deberías ver en pantalla:

```
Hello, World!
```

---


---

**Fecha de modificación:** 09/10/2025
**Estado:** <font color="#ff0000">No actualizado</font>
#DAM 

---
