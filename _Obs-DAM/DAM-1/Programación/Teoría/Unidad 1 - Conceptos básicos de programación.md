## Definición de programación

### Lenguajes de programación
#### Lenguaje de nivel bajo

##### Código Binario
#### Lenguaje de nivel medio
##### Ensamblador
##### Código Hexadecimal

### Lenguaje de alto nivel

### Lenguaje de pseudocódigo

---
##### Compilador de código
// Qué es, tipos y problemas y soluciones.

---
### Diseños en programación

---
#### Diagramas de flujo
Es una manera gráfica de representar un algoritmo.
Los diagramas de flujo siempre tienen un inicio y un final.
Es muy importante el símbolo y el tipo de letra.
En una programación estructurada la programación siempre es secuencial y consecutiva. Sigue un orden y un final, siempre va de arriba hacia abajo.

---
#### Símbolos:

// Crear plantilla para poder añadir ejemplos rápidamente. Para ello quiero buscar todas las posibilidades y dejarlas preparadas para que sea abrir y crear.
##### Rectángulo:
Representa un proceso.
CPU y memoria RAM intervienen.

_ Las variables -> se explican en este proceso como si fueran celdas dentro de cualquier tipo de memoria

---
#### Rectángulo desplazado hacia la izquierda con flecha en la esquina superior derecha
Flecha que sale: Muestra en pantalla el resultado de lo que hay dentro de la forma
Flecha que entra: Recibe el valor que se introduzca

Ejercicio 1: Programa que pregunte a una persona su nombre, su edad, su e-mail y mostrar información bien construido

Ejercicio 2: Programa que pida 4 números y luego hay que mostrar el resultado de multiplicar el primero por el tercero y sumar segundo por cuarto. Mostrar en pantalla los resultados

---
### Rombo
Se usa para un condicional
Condicional con if

--- 

Igual ( == )
	Alerta: Un igual (=) es una asignación
	Comparativa --> Se usan ==
	Comparativa estricta --> Según el lenguaje de programación ( === ) -->
Mayor ( > )
Menor ( < )
Mayor igual ( >= )
Menor igual ( <= )
AND ( && )
	
OR ( | | )
	
NOT ( != )
	
Representación del AND, OR,  NOT en un diagrama:
	Simplemente añadir la instrucción entre las dos condiciones

//Concepto del cursor --> Implica que el programa ejecuta cada línea
//Concepto de "Query"




---
CPU - La cpu es un dispositivo aritmético-lógico
Aritmético: Sumar, restar, multiplicar, dividir y operador módulo
	El módulo de un número es el resto resultante de una división
	Muy utilizado para diferenciar entre par e impar

--- 
Ejercicio:
1. Un empleado ha de ir al almacén y en la puerta tiene un lector de códigos. El usuario ha de introducir la contraseña de 3 dígitos.
	Cada trabajador tiene asociado una contraseña a su persona.
	Si la contraseña es correcta y el usuario tiene rango de administrador, la puerta se abrirá.
	Si el usuario no es administrador, pero la contraseña es correcta. Le pedirá que introduzca el código de desbloqueo.
2. Ejercicio similar:
	1. Sabemos que el código es 888
	2. Queremos comprobar que sea correcto y que coincida que coincida con el nombre del empleado que es Eusebio. Eusebio no es admin.
	3. Si estas dos cosas no son correctas, no es administrador
	4. Si Juan, introduce su código de empleado que es 256. Entra como administrador

---

// Corrección del examen

Explicación del condicional if
if, else if, else

JAVA
variable "var" variable genérica --> De forma automática el programa entiende el tipo de variable que representa.

Constantes
variable cuyo valor no puede modificarse una vez iniciado. 

String
Uniones de diferentes elementos "char".
//Text block """ cadena de multiples líneas.
Cadena.Length() para saber lo larga que es una cadena y hay que tener en cuenta que la cadena siempre empieza en 0.

Inmutabilidad de cadenas
Los valores dentro de una cadena no se pueden modificar.
Si se desea modificar la cadena, se debe crear un nuevo objeto de tipo String y asginarlo a la variable.

¿Cómo se comparan las cadenas?
Utilizando .equals(), este método sirve para comparar objetos (no solo cadenas)

Crear subcadenas --> Utilizando el método substring(start, end) se puede cortar una cadena. Util para separar nombre del correo del dominio en un mail.

Es posible buscar contenidos, incluso con subcadenas, con indexOf() y la última buscada con lastIndexOf()
Es posible reemplazar subcadenas con replace().

//Importante - Está explicado como el culo en las diapositivas, cada función comentada tiene una forma de realizarse 

Scanner

Numero aleatorio

String.format
## Bucles
### While
Repite el bloque de código hasta que la condición es false

 **Do/While**
Variante del While
Primero se ejecuta el bloque

### For
Tiene 3 secuencias o partes. 
Se declara una variable dentro, se crea una condición y finalmente, el incremento o decremento.
La variables se suele indicar como "i" y "j"

Las variables arrays se usan bastante dentro del for.

**Bucles anidados**


//Condicional ternario
Es el que usa ? y : para comparar

### Array Bidimensional
Contiene otros arrays
Es posible almacenar datos en un tabla con filas y columnas
```java
int [] myNumbers = { { 1, 4, 2}, {3, 6, 8} };

IO.println(myNumbers[0], [6])
```

Pueden tener diferentes longitudes
```java
int [] myNumbers = { { 1, 4, 2}, {3, 6, ,5, 6 ,8} };
```



### For-each


---

**Fecha de modificación:** 05/10/2025
**Estado:** <font color="#ff0000">No actualizado</font>
#DAM 

---
