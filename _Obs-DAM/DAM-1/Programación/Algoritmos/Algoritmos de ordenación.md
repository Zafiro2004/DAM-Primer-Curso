# Unidad 1 - Algoritmos

## 1.1. Introducción a los algoritmos

### ¿Qué es un programa?

Un **programa** es una combinación de **estructura de datos** y **algoritmos** que trabajan conjuntamente para resolver un problema concreto.  
La estructura de datos organiza la información, mientras que el algoritmo define los pasos para procesarla.
La programación moderna enfatiza escribir código **legible, estructurado y modular**, pensando en otros desarrolladores (no solo en la máquina).

### ¿Qué es un algoritmo?

Un **algoritmo** es una secuencia finita y ordenada de instrucciones que permite resolver un problema o realizar una tarea.  
En programación, diseñar un algoritmo implica **pensar primero en cómo resolver el problema antes de escribir el código**.

Un buen algoritmo debe cumplir tres propiedades fundamentales:

- **Precisión:** las instrucciones deben ser claras y sin ambigüedades.
- **Finitud:** debe terminar tras un número finito de pasos.
- **Eficiencia:** debe optimizar tiempo y memoria.

El uso de bucles (`for`, `while`) y estructuras condicionales (`if`) permite expresar la **iteración** y el **control de flujo**, esenciales en el diseño algorítmico.

Perfecto ✅
He combinado y reorganizado **todo el contenido teórico** que mencionas en una única sección unificada y coherente:

> “### Conceptos iniciales para la programación de algoritmos”

Está ya adaptada con lenguaje técnico en inglés, pseudocódigo coherente y redacción precisa a nivel universitario.
La estructura fluye de conceptos básicos → técnicas de diseño → estructuras → iteración y complejidad.

---

### Conceptos iniciales para la programación de algoritmos

La programación de algoritmos se basa en comprender los fundamentos que permiten **estructurar, organizar y ejecutar** instrucciones de manera lógica y eficiente.
A continuación, se presentan los principales conceptos:

---
#### Backtracking

**Backtracking** es una técnica de resolución de problemas basada en **prueba y error controlado**.
Consiste en construir una solución paso a paso y, cuando una elección no lleva a un resultado válido, **retroceder (backtrack)** para probar una alternativa diferente.

Se utiliza en problemas de búsqueda, combinatoria o recorridos (como laberintos o el problema de las N reinas).

Ejemplo conceptual:
```c
procedure backtrack(solution)
    if solution is complete then
        output(solution)
    else
        for each option in candidates do
            if option is valid then
                add(option)
                backtrack(solution)
                remove(option)  // undo choice
            end if
        end for
    end if
end procedure
```

---
#### Método *Top-Down*

El método **Top-Down** (de arriba hacia abajo) consiste en **dividir un problema complejo en subproblemas más simples**.
Primero se define la estructura general del programa y, progresivamente, se detallan sus partes.
En otras palabras: *se deja lo complicado para el final*, resolviendo primero los pasos más claros o sencillos.

**Ventajas:**
* Facilita el diseño modular.
* Mejora la comprensión global del programa.
* Permite desarrollar y probar partes del código de manera incremental.

Este método está relacionado con los **niveles de abstracción**, donde se comienza por una visión general (*qué hace*) y se desciende hasta la implementación (*cómo lo hace*).

---
#### Árbol de algoritmo

Un **árbol de algoritmo** es una representación gráfica de las decisiones y caminos que puede tomar un algoritmo.
Cada nodo representa una operación o condición, y las ramas representan los posibles resultados.

Se usa comúnmente para visualizar **estructuras de decisión** (`if / else`) o recorridos recursivos (*backtracking*, búsqueda binaria, etc.).

---
#### Variable

Una **variable** es un espacio en memoria que almacena un valor, el cual puede cambiar durante la ejecución del programa.
En programación, la asignación y la comparación se diferencian claramente:

**Asignación (`=`):** guarda un valor.
  ```c
  x = x + 1  // assigns new value to x
  ```
La expresión de la derecha se evalúa primero y luego se asigna el resultado a la izquierda.

**Comparación (`==`):** comprueba si dos valores son iguales.
  ```c
  if x == 10 then
      print("x equals 10")
  end if
  ```

---
#### Estructuras de datos

Las **estructuras de datos** determinan cómo se almacenan y acceden los valores dentro de un algoritmo.

**Array (Vector):**
  Estructura de tamaño fijo, donde los elementos se almacenan en posiciones consecutivas de memoria.
  Su tamaño se define previamente, lo que la hace muy rápida para el acceso aleatorio.
  Se representan entre corchetes `[ ]` y los elementos se separan por comas.
  ```c
  A = [5, 7, 3, 2]
  print(A[2])  // outputs 3
  ```

**List:**
  Estructura dinámica que puede crecer o reducirse durante la ejecución.
  Es más flexible, aunque generalmente más lenta que un array.

En los algoritmos de ordenación, es fundamental comprender la relación entre:
* **Array:** conjunto total de elementos.
* **Index:** posición de cada elemento.
* **Value:** dato almacenado en esa posición.

---
#### Iteración (*Loops*)

La **iteración** es el proceso de repetir un conjunto de instrucciones un número determinado o indeterminado de veces.
En programación, los dos bucles más comunes son:

**While loop:**
Se usa cuando **no se conoce el número exacto de iteraciones**.
  ```c
  while i < n do
      process(A[i])
      i ← i + 1
  end while
  ```

**For loop:**
Se usa cuando **sí se conoce el número de iteraciones**.
  ```c
  for i ← 0 to n - 2 do
      swap(A[i], A[i + 1])
  end for
  ```

Este bucle es más seguro porque combina contador, condición y actualización en una sola estructura, reduciendo errores comunes.

En la ordenación de arrays, suele bastar con recorrer hasta `n - 1` posiciones, ya que el último elemento queda automáticamente en su lugar.

---
####  Tabulación (*Indentation*)

La **tabulación** o *indentation* es el espaciado que se utiliza para reflejar la **jerarquía de instrucciones** en el código.
Aunque no afecta a la lógica del programa, es esencial para la **legibilidad y el mantenimiento** del código.

Ejemplo:
```c
for i ← 0 to n - 1 do
    if A[i] > 0 then
        print(A[i])
    end if
end for
```

Cada nivel de indentación indica un bloque de control o un ámbito lógico.

---
#### Complejidad algorítmica

La **complejidad algorítmica** mide la eficiencia de un algoritmo en términos de:

* **Tiempo de ejecución** (*Time complexity*)
* **Uso de memoria** (*Space complexity*)

Se expresa mediante la **notación Big O** `O(n)`, que describe el crecimiento del tiempo o espacio necesario en función del tamaño de entrada `n`.

Ejemplos comunes:

| Algoritmo          | Complejidad temporal                 |
| ------------------ | ------------------------------------ |
| **Bubble Sort**    | O(n²)                                |
| **Insertion Sort** | O(n²)                                |
| **Selection Sort** | O(n²)                                |
| **Merge Sort**     | O(n log n)                           |
| **Quick Sort**     | O(n log n) promedio, O(n²) peor caso |

El objetivo del diseño algorítmico es **minimizar la complejidad** sin sacrificar la claridad ni la corrección.

## Logaritmo en Algoritmos
---
Teoría base de logaritmos --> Crear una base matemática con apuntes generales

---
### Qué significa log₂(N)

El logaritmo en base 2 de un número ( N ) indica **cuántas veces puedes dividir ( N ) entre 2 hasta llegar a 1**.  
Por ejemplo:

|N|log₂(N)|Interpretación|
|---|---|---|
|2|1|2¹ = 2|
|4|2|2² = 4|
|8|3|2³ = 8|
|16|4|2⁴ = 16|

Entonces, log₂(N) ≈ número de pasos necesarios si vas **dividiendo el problema a la mitad cada vez**.

---
###  En algoritmos: ¿para qué se usa?

El log₂(N) aparece cuando un algoritmo **reduce su espacio de búsqueda a la mitad** en cada paso.  
Esto ocurre en muchos algoritmos eficientes.
#### Ejemplos comunes:

1. **Búsqueda binaria (Binary Search)**
    - Tienes una lista ordenada de N elementos.
    - Cada comparación descarta la mitad de los datos.
    - Por eso su complejidad es **O(log₂ N)**.
2. **Árboles binarios balanceados (BST, AVL, Red-Black Tree)**
    - La altura del árbol (número de niveles) crece como log₂(N).
    - Buscar, insertar o eliminar cuesta **O(log₂ N)**.
3. **Algoritmos de ordenación por división (como Merge Sort o Heap Sort)**
    - El proceso de dividir en mitades contribuye al término log₂(N).
    - Merge Sort, por ejemplo, tiene complejidad **O(N log₂ N)**.
4. **Estructuras jerárquicas o de niveles (como redes o pirámides)**
    - El número de niveles hasta llegar a un elemento más pequeño suele ser proporcional a log₂(N).

---
###  Intuición práctica

Cada vez que el problema se **reduce a la mitad en cada paso**, aparece log₂(N).  
Por eso lo ves tan seguido en algoritmos eficientes: representa **crecimiento muy lento** comparado con lineal o cuadrático.

|Tipo de crecimiento|Ejemplo típico|Complejidad|
|---|---|---|
|Lineal|Recorrer lista|O(N)|
|Logarítmico|Búsqueda binaria|O(log₂ N)|
|Linealítmico|Merge Sort|O(N log₂ N)|
|Cuadrático|Burbuja|O(N²)|
<center></center>
<center></center>

![[output.png|600]]

---
#### Filosofía moderna de programación
La programación actual prioriza escribir código que sea **limpio, modular y legible**.
El objetivo no es solo que el programa funcione, sino que otro desarrollador pueda entenderlo y mantenerlo fácilmente.

Principios clave:

* Nombrar variables y funciones de forma descriptiva.
* Usar indentación y comentarios claros.
* Dividir el código en funciones con responsabilidades únicas.

> “Se programa para las personas, no para la máquina.”

---
## 1.2. Algoritmos de ordenación
### Tipos de algoritmos de ordenación
Los algoritmos de ordenación (**sorting algorithms**) organizan los elementos de una lista o array en un orden específico (generalmente ascendente o descendente).  
A continuación, una visión general de los principales tipos:

| Tipo                               | Descripción breve                                                                 |
| ---------------------------------- | --------------------------------------------------------------------------------- |
| **Bubble Sort**                    | Compara pares de elementos adyacentes e intercambia si están en orden incorrecto. |
| **Selection Sort**                 | Busca el elemento mínimo en cada pasada y lo coloca al inicio.                    |
| **Insertion Sort**                 | Inserta cada elemento en su posición correcta dentro de la parte ya ordenada.     |
| **Merge Sort**                     | Divide recursivamente el array y combina (merge) las mitades ordenadas.           |
| **Quick Sort**                     | Selecciona un pivote y particiona el array en elementos menores y mayores.        |
| **Heap Sort**                      | Usa una estructura heap (árbol binario) para ordenar eficientemente.              |
| **Counting / Radix / Bucket Sort** | Ordenan sin comparaciones, usando conteo o distribución de claves.                |
Todos los algoritmos anteriores son **de comparación** (comparen elementos entre sí).
Aunque **Selection**, **Insertion** y **Bubble Sort** no son los más eficientes, su comprensión es fundamental para entender algoritmos más avanzados como **Merge Sort** o **Quick Sort**.

---
## 1.3. Algoritmos de ordenación básicos

---

**Fecha de modificación:** 15/10/2025  
**Estado:** ✅ Actualizado  
#DAM

---
octubre 14 2025 
Los números se pueden ordenar porque se pueden comparar
Ordenación topológica --> Cuando no todos los elementos se pueden comparar

---

//Concepto Ley de Morgan

---

---

---

**Fecha de modificación:** 05/10/2025
**Estado:** <font color="#ff0000">No actualizado</font>
#DAM 

---