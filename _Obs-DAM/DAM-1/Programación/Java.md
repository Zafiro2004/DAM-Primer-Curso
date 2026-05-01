## 1. Entorno de Desarrollo

**JDK (Java Development Kit)**
- Paquete que necesitas para **programar en Java**.	
- Incluye:
	- Compilador `javac` (convierte `.java` → `.class` bytecode).
	- **JRE** (Java Runtime Environment).
	- Herramientas (`jar`, depurador, etc.).

**JRE (Java Runtime Environment)**
- Entorno para **ejecutar** programas Java.        
- Contiene:
    - **JVM** (Java Virtual Machine).        
    - Bibliotecas estándar de Java.

 **JVM (Java Virtual Machine)**    
- Máquina virtual que **ejecuta el bytecode**.        
- Es lo que permite el lema _“Write once, run anywhere”_: compilas una vez, corre en cualquier SO que tenga JVM.


### IDEs

 **IntelliJ IDEA Community**
- Crear proyecto: _New Project_ → elegir carpeta → seleccionar JDK.
- En `src` → _New → Java Class_ para crear clases.
- Atajos:
	- `psvm` → genera `public static void main(String[] args)`.
	- `sout` → genera `System.out.println();`.
- Opciones útiles:	
	- Tema oscuro / high contrast.
	- Cambiar tamaño de fuente en _Editor → Font_.
	- Desactivar _Inlay Hints_ si molestan.

**Eclipse IDE**    
- Proyecto Java: _File → New → Java Project_.    
- Paquete y clase principal dentro de `src`.

**Apache NetBeans** (aunque no sale en el PDF, lo unimos al tema)  
- Proyecto Java con _Create Main Class_ marcado para que genere `main`.        
- Tema oscuro desde _Tools → Options → Look and Feel_.     

---

## 2. ¿Qué es Java?

- Lenguaje de programación **muy popular** y **potente**, creado en **1995**.
- Propiedad de **Oracle**.
- Más de **3 mil millones de dispositivos** ejecutan Java.
- Se usa para:
    - Aplicaciones **Android**.
    - Aplicaciones **de escritorio**.
    - Aplicaciones **web**.
    - **Servidores** web y de aplicaciones.
    - **Juegos**.
    - Conexión a **bases de datos**.

- Características clave:    
    - **Multiplataforma**: gracias al *bytecode* y la *JVM*.
    - **Orientado a objetos**.
    - Gestión automática de memoria (**garbage collector**).
    - Soporte para **multihilo**.
	    - Definición multihilo: ////
    - Amplio **ecosistema de librerías y frameworks** (Spring, JavaFX, etc.).

---

## 3. Sintaxis

- Todo el código que se ejecuta debe estar dentro de una **clase**.
- El **nombre de la clase**:
    - Empieza en **mayúscula** (convención).
    - Debe coincidir con el **nombre del archivo** (`HolaMundo.java` → clase `HolaMundo`).
- Java **distingue mayúsculas y minúsculas**:
    - `MyClass` ≠ `myclass`.
- Estructura típica mínima:
```java
    public class HolaMundo {
        public static void main(String[] args) {
            // Código aquí
        }
    }
```

- Solo puede haber **una clase `public` por archivo**, y el archivo se llama igual que esa clase.    

---

## 4. Imprimir texto

- Se usa `System.out.println()` para mostrar una línea:
  
    ```java
    System.out.println("Hola Mundo");
    ```
    
- `System.out.print()` **no** hace salto de línea al final.
    
- Podemos concatenar texto y variables con `+`:
    
    ```java
    System.out.println("La edad es " + edad);
    ```
    

### 4.1. Impresión formateada (`printf` y `String.format`)

- Para controlar decimales, ceros a la izquierda, etc.:
```java
System.out.printf("Nombre: %s, Edad: %d, Salario: %.2f%n", nombre, edad, salario);
```
- Especificadores:
    
    - `%s` → `String`    
    - `%d` → entero
    - `%f` → decimal (`%.2f` → 2 decimales)
    - `%n` → salto de línea independiente de plataforma
### 4.2. Bloques de texto (text blocks)

- Permiten escribir cadenas multilínea de forma cómoda:
```java
String mensaje = """
	Detalle Persona:
		Nombre: %s
		Edad: %d años
		Salario: %.2f
	""".formatted(nombre, edad, salario);
``` 

---
## 5. Comentarios

- **Una línea**:
```java
// Este es un comentario de una línea
```
- **Varias líneas**:
```java
/* Comentario
   de varias
   líneas */
``` 
- Se usan para documentar el código, desactivar líneas temporalmente, etc.

---

## 6. Variables

### 6.1. Tipos de variables

- `String`: texto (`"Hola"`), entre **comillas dobles**.
- `int`: enteros sin decimales (`123`, `-45`).
- `float`: decimales, ~6–7 dígitos.
- `double`: decimales, ~15–16 dígitos.
- `char`: un solo carácter (`'a'`, `'B'`), **comillas simples**.
- `boolean`: `true` o `false`.

### 6.2. Declaración y asignación

- Forma general:
```java
tipo nombreVariable = valor;
``` 
- Ejemplos:
```java
int edad = 25;
String nombre = "Marisol";
boolean esMayor = true;
``` 
- Puedes declarar y asignar después:
```java
int x;
x = 10;
``` 

### 6.3. Declarar varias variables

- Separadas:
```java
int x = 5;
int y = 6;
int z = 50;
```
- O bien:
```java
int x = 5, y = 6, z = 50;
``` 

### 6.4. Constantes (`final`)

- Para que una variable **no se pueda cambiar**, se usa `final`:
```java
final double PI = 3.1416;
final int DIAS_SEMANA = 7;
```
- Convención: nombre en **MAYÚSCULAS** con `_`.

### 6.5. Tipo `var` (inferencia de tipo)

- Desde Java 10, se puede usar `var` para **variables locales**:
```java
var nombre = "Carlos"; // String
var edad = 30;         // int
var sueldo = 5000.5F;  // float
```
- Reglas:
    - Solo dentro de métodos/bloques.
    - Debe **inicializarse** en la misma línea.
    - No se permite `var x;` sin valor ni `var y = null;`.

### 6.6. Tipos de referencia

- Además de primitivos, tenemos **tipos de referencia**:    
    - Clases (`String`, `Scanner`, etc.).
    - Interfaces.
    - Arrays.
    
- Guardan **referencias** a objetos en memoria, no el valor directo.


---

## 7. Identificadores

- Cada variable tiene un **nombre único** (identificador).
- Reglas:
    - Pueden contener letras, dígitos, `_` y `$`.
    - Deben empezar por **letra**, `_` o `$`.
    - No pueden contener espacios.
    - **Distinguen mayúsculas/minúsculas** (`edad` ≠ `Edad`).
    - No pueden ser **palabras reservadas** (`int`, `class`, `for`, `boolean`, …).

### 7.1. Buenas prácticas

- Usar nombres **descriptivos**:
    - `edad`, `suma`, `volumenTotal`, `nombreCliente`.
- Convención en Java:
    - Variables y métodos: `camelCase` → `nombreCompleto`, `totalPagar`.
    - Clases: `PascalCase` → `DetalleLibro`.
    - Booleanos: `esActivo`, `tieneSaldo`, `isCasado`.

---

## 8. Tipos de datos primitivos

- Los **8 primitivos** de Java:

|Tipo|Tamaño aprox.|Ejemplo / rango|
|---|---|---|
|`byte`|8 bits|-128 a 127|
|`short`|16 bits|-32.768 a 32.767|
|`int`|32 bits|-2.147.483.648 a 2.147.483.647|
|`long`|64 bits|valores enteros muy grandes|
|`float`|32 bits|~6–7 dígitos decimales|
|`double`|64 bits|~15–16 dígitos decimales|
|`boolean`|(1 bit lógico)|`true` / `false`|
|`char`|16 bits|un carácter Unicode|

### 8.1. Valores por defecto (en atributos de objeto)

- Numéricos enteros → `0`.
- `float`/`double` → `0.0`.
- `char` → `'\u0000'`.
- `boolean` → `false`.
- Referencias (clases, arrays, `String`) → `null`.

---

## 9. Cadenas (`String`)

Aunque en el PDF se menciona `String` en variables, aquí reunimos todo lo importante:

### 9.1. Creación de cadenas

- Literal:
```java
String saludo = "Hola";
```
- Con `new`:
```java
String saludo2 = new String("Mundo");
```

### 9.2. Índices y longitud

- Los caracteres se indexan desde **0**:    
```java
String texto = "Hola Mundo";
char c = texto.charAt(0); // 'H'
int longitud = texto.length(); // 10
```

### 9.3. Inmutabilidad

- Las `String` son **inmutables**:    
    - Cualquier “cambio” crea una nueva cadena.
- Ejemplo:
```java
String s = "Hola";
s = "Adios"; // nuevo objeto String
```

### 9.4. Comparación de cadenas

- `==` compara **referencias** (si apuntan al mismo objeto).
- `equals()` compara **contenido**:
```java
String a = "Java";
String b = new String("Java");

boolean r1 = (a == b);        // false normalmente
boolean r2 = a.equals(b);     // true
```

### 9.5. Métodos útiles

- `toUpperCase()`, `toLowerCase()`    
- `trim()` → quita espacios al principio y al final.
- `replace("Hola", "Saludos")`
- `substring(inicio, fin)`
- `indexOf("texto")`, `lastIndexOf("texto")`

### 9.6. Concatenación y clases especiales

- Con `+` o `concat`:    
```java
String nombreCompleto = nombre + " " + apellido;
``` 
- Para muchas concatenaciones, usar **`StringBuilder`**:
```java
StringBuilder sb = new StringBuilder();
sb.append("Hola ");
sb.append("Mundo");
String resultado = sb.toString();
``` 
### 9.7. Caracteres especiales

- `\n` salto de línea
- `\t` tabulador
- `\"` comilla doble
- `\'` comilla simple
- `\\` barra invertida

---

## 10. If / If else

### 10.1. If simple

```java
if (edad >= 18) {
    System.out.println("Eres mayor de edad");
}
```

### 10.2. If / else

```java
if (edad >= 18) {
    System.out.println("Mayor de edad");
} else {
    System.out.println("Menor de edad");
}
```

### 10.3. If / else if / else

```java
if (nota >= 90) {
    System.out.println("A");
} else if (nota >= 80) {
    System.out.println("B");
} else if (nota >= 70) {
    System.out.println("C");
} else if (nota >= 60) {
    System.out.println("D");
} else {
    System.out.println("F");
}
```

### 10.4. Operador ternario

- Sintaxis: `condicion ? valorSiTrue : valorSiFalse;`

```java
String resultado = (numero % 2 == 0) ? "Par" : "Impar";
String mensaje = (edad >= 18) ? "Mayor de edad" : "Menor de edad";
```

- Ejercicio: determinar si un número es **positivo**, **negativo** o **cero** con ternario anidado.

### 10.5. `switch` clásico

```java
int dia = 3;
switch (dia) {
    case 1 -> System.out.println("Lunes");
    case 2 -> System.out.println("Martes");
    // ...
    default -> System.out.println("Día inválido");
}
```

### 10.6. `switch` con `yield` (expresiones switch)

```java
String letra = switch (calificacion) {
    case 10, 9 -> "A";
    case 8      -> "B";
    case 7      -> "C";
    case 6      -> "D";
    case 5,4,3,2,1,0 -> "F";
    default -> {
        System.out.println("Calificación incorrecta");
        yield "Calificación incorrecta";
    }
};
```

Ventajas: código más conciso, no se necesitan `break`, es fácil devolver un valor.

### 10.7. Ejercicios (condicionales)

- **Sistema de descuentos VIP**:    
    - Descuento si compra ≥ 10 artículos **y** es miembro.
- **Sistema de préstamo de libros**:
    - Prestar si tiene credencial de estudiante **o** vive a menos de 3 km.
- **Sistema de autenticación**:
    - Comparar usuario/contraseña introducidos con constantes.


---

## 11. Operadores

### 11.1. Operadores de comparación (del PDF)

- `<` menor que    
- `<=` menor o igual
- `>` mayor
- `>=` mayor o igual
- `==` igual
- `!=` distinto

### 11.2. Operadores lógicos (del PDF)

- `&&` (AND) – todas las condiciones verdaderas.
- `||` (OR) – al menos una verdadera.
- `!` (NOT) – invierte el valor.

Ejemplo, comprobar si un número está en rango:

```java
final int min = 0;
final int max = 5;

boolean enRango = dato >= MINIMO && dato <= MAXIMO;
```

### 11.3. Operadores aritméticos básicos

- `+`, `-`, `*`, `/`, `%` (resto).

### 11.4. Operadores unarios

- `+a`, `-a` (signo).
- `++a` / `a++` (pre y post-incremento).
- `--b` / `b--` (pre y post-decremento).

### 11.5. Operadores de asignación compuesta

- `+=`, `-=`, `*=`, `/=`, `%=`:

```java
int n = 10;
n += 5;  // n = 15
n *= 2;  // n = 30
```

### 11.6. Ejercicios (operadores)

- **Generador de ticket**:
    - Leer varios precios, sumar, calcular impuestos, mostrar total.
- **Sistema de préstamo / descuentos** (ya mencionados en condicionales).

---

## 12. Bucles

### 12.1. Concepto

- Un **bucle** permite ejecutar un bloque de código varias veces mientras se cumpla una condición.
### 12.2. `while`

```java
int i = 0;
while (i < 5) {
    System.out.println(i);
    i++;
}
```

- Comprueba la condición **antes** de cada iteración.

### 12.3. `do-while`

```java
int i = 0;
do {
    System.out.println(i);
    i++;
} while (i < 5);
```

- Se ejecuta **al menos una vez**, la condición se evalúa al final.

### 12.4. `for`

```java
for (int i = 0; i < 5; i++) {
    System.out.println(i);
}
```

- Parte 1: inicialización (`int i = 0`).
- Parte 2: condición (`i < 5`).
- Parte 3: actualización (`i++`).

### 12.5. `for-each`

- Muy usado con arrays:

```java
String[] coches = {"Volvo", "BMW", "Ford"};
for (String coche : coches) {
    System.out.println(coche);
}
```

### 12.6. Bucles anidados

- Un bucle **dentro** de otro:
```java
for (int i = 1; i <= 10; i++) {
    for (int j = 1; j <= 10; j++) {
        System.out.println(i + " x " + j + " = " + (i * j));
    }
}
```

---

## 13. Arrays (unidimensionales)

### 13.1. Concepto

- Un **array** almacena varios valores **del mismo tipo** en una sola variable.    

### 13.2. Declaración y creación

```java
int[] numeros = {1, 2, 3, 4};
String[] nombres = {"Ana", "Luis", "María"};
```

- O con `new`:    

```java
int[] edades = new int[5]; // crea espacio para 5 enteros
```

### 13.3. Acceso por índice

```java
int x = numeros[0];   // primer elemento
numeros[1] = 10;      // modificar segundo elemento
```

- Ojo: índices de `0` a `length - 1`.

### 13.4. Propiedad `length`

```java
int tam = numeros.length;
System.out.println("Elementos: " + tam);
```

### 13.5. Recorrer arrays

- Con `for`:

```java
for (int i = 0; i < numeros.length; i++) {
    System.out.println(numeros[i]);
}
```

- Con `for-each`:

```java
for (int n : numeros) {
    System.out.println(n);
}
```

### 13.6. Ejemplo: suma de elementos

```java
int suma = 0;
for (int n : numeros) {
    suma += n;
}
System.out.println("Suma = " + suma);
```

---

## 14. Arrays multidimensionales

### 14.1. Arrays bidimensionales (tablas)

- Declaración:
```java
int[][] matriz = {
    {1, 2, 3},
    {4, 5, 6}
};
```

- Acceso: `matriz[fila][columna]`.

```java
int valor = matriz[0][1]; // 2
matriz[1][2] = 10;        // cambia el 6 por 10
```

- `matriz.length` → número de filas.
- `matriz[fila].length` → número de columnas de esa fila.
- Recorrido con bucles anidados:

```java
for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[i].length; j++) {
        System.out.print(matriz[i][j] + " ");
    }
    System.out.println();
}
```

- También se puede con `for-each` anidado.    
### 14.2. Arrays 3D, 4D…

- Son arrays que contienen arrays bidimensionales, etc.
- Se usan en problemas más avanzados (tableros 3D, matrices de tiempo, etc.).
- Se accede con más índices: `array3D[x][y][z]`.
- Te enseño la mecánica con ejemplos muy pequeños, que es como mejor se ve.
#### Array de 3 dimensiones (`int[][][]`)

Piensa en un 3D como:  
**[capa][fila][columna]**  
Por ejemplo, 2 capas, 2 filas, 3 columnas:

```java
public class Array3D {
    public static void main(String[] args) {
        int[][][] cubo = {
			{   // capa 0
				{1, 2, 3},   // fila 0
				{4, 5, 6}    // fila 1
			},
			{   // capa 1
				{7, 8, 9},   // fila 0
				{10,11,12}   // fila 1
			}
        };

        // Recorrerlo
        for (int capa = 0; capa < cubo.length; capa++) {
            System.out.println("Capa " + capa + ":");
            for (int fila = 0; fila < cubo[capa].length; fila++) {
                for (int col = 0; col < cubo[capa][fila].length; col++) {
                    System.out.print(cubo[capa][fila][col] + " ");
                }
                System.out.println();
            }
            System.out.println();
        }
    }
}
```

Claves:
- `cubo.length` → nº de **capas**.
- `cubo[capa].length` → nº de **filas** en esa capa.
- `cubo[capa][fila].length` → nº de **columnas** en esa fila.

---

#### Array de 4 dimensiones (`int[][][][]`)

Aquí ya es:  
**[t][capa][fila][columna]**  
Por ejemplo, imagina:

- `t` = tiempo (día),
- `capa` = planta,
- `fila` y `columna` = posición.

```java
public class Array4D {
    public static void main(String[] args) {
        // 2 días, 2 capas, 2 filas, 3 columnas
        int[][][][] datos = new int[2][2][2][3];

        // Rellenamos con algún valor sencillo
        int contador = 1;
        for (int dia = 0; dia < datos.length; dia++) {
            for (int capa = 0; capa < datos[dia].length; capa++) {
                for (int fila = 0; fila < datos[dia][capa].length; fila++) {
                    for (int col = 0; col < datos[dia][capa][fila].length; col++) {
                        datos[dia][capa][fila][col] = contador++;
                    }
                }
            }
        }

        // Recorrerlo y mostrar
        for (int dia = 0; dia < datos.length; dia++) {
            System.out.println("Día " + dia + ":");
            for (int capa = 0; capa < datos[dia].length; capa++) {
                System.out.println("  Capa " + capa + ":");
                for (int fila = 0; fila < datos[dia][capa].length; fila++) {
                    System.out.print("    ");
                    for (int col = 0; col < datos[dia][capa][fila].length; col++) {
                        System.out.print(datos[dia][capa][fila][col] + " ");
                    }
                    System.out.println();
                }
                System.out.println();
            }
            System.out.println("-----------");
        }
    }
}
```

Claves:

- `datos.length` → dimensión 1 (días).
    
- `datos[dia].length` → dimensión 2 (capas).
    
- `datos[dia][capa].length` → dimensión 3 (filas).
    
- `datos[dia][capa][fila].length` → dimensión 4 (columnas).
    

---

Si quieres, en el siguiente paso te preparo un ejercicio tipo “temperaturas 3D” y otro 4D (por ejemplo, días × ciudades × turnos × sensores) para que practiques estos bucles anidados.

---

## 15. Entrada de datos y utilidades extra (añadido al temario)

Aunque no aparece explícito en tus diapositivas, lo integramos aquí porque lo usas en muchos ejercicios.

### 15.1. Clase `Scanner` (lectura por teclado)

```java
import java.util.Scanner;

Scanner consola = new Scanner(System.in);

System.out.print("Introduce tu nombre: ");
String nombre = consola.nextLine();

System.out.print("Edad: ");
int edad = consola.nextInt();
```

- Problema típico: usar `nextInt()` y luego `nextLine()` → hay que consumir el salto de línea:

```java
int edad = consola.nextInt();
consola.nextLine(); // limpia el buffer
String direccion = consola.nextLine();
```

- Conversión (parseo) desde `String`:

```java
int n = Integer.parseInt(consola.nextLine());
double d = Double.parseDouble(consola.nextLine());
boolean b = Boolean.parseBoolean(consola.nextLine());
```

### 15.2. Números aleatorios (`Random`)

```java
import java.util.Random;

Random random = new Random();
int dado = random.nextInt(6) + 1;   // 1 a 6
float r = random.nextFloat();       // 0.0 a 1.0
```

- Usado en el ejercicio de **generar ID único**.

---