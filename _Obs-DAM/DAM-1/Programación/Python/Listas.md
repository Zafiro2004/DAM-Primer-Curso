# Listas en Python: Guía Completa

Una **lista** es una colección ordenada y mutable (modificable) de elementos. En Python, las listas pueden contener diferentes tipos de datos al mismo tiempo.

## 1. Conceptos Básicos e Indexación

Los elementos de una lista se acceden mediante un **índice** numérico que empieza en **0**.

- **Creación:** `l = [1, 2, 3, "h"]`
- **Mida (Longitud):** `len(l)` devuelve el número de elementos.
- **Acceso mediante índices:**
    - `l[0]`: Primer elemento.
    - `l[-1]`: Último elemento (índice negativo).
    - `l[-2]`: Penúltimo elemento.

## 2. Modificación y Operaciones Rápidas

Las listas permiten cambios directos y operaciones matemáticas para su manipulación:

- **Asignación:** `l[2] = "dos"` cambia el valor en esa posición.
- **Multiplicación ():** `l * 2` duplica los elementos de la lista.
- **Suma (`+`):** `l1 + l2` concatena (une) dos listas.
- **Inicialización rápida:** `[0] * 100` crea una lista de 100 ceros.

## 3. Métodos Esenciales de Listas

|**Método**|**Acción**|
|---|---|
|`.append(x)`|Añade `x` al **final** de la lista.|
|`.remove(x)`|Elimina la **primera aparición** del valor `x`.|
|`.pop()`|Elimina y devuelve el **último** elemento.|
|`.index(x)`|Devuelve la **posición** (índice) del valor `x`.|
|`.sort()`|Ordena la lista (modifica la lista original).|

## 4. Comprobación de Existencia

Podemos verificar si un elemento está o no en la lista usando operadores de pertenencia:

- `"h" in l`: Devuelve `True` si "h" está presente.
- `"h" not in l`: Devuelve `True` si "h" **no** está presente.

## 5. El Arte del Slicing (Sublistas)

El _slicing_ permite extraer fragmentos de una lista con la sintaxis `[inicio:final:paso]`.

- `l[2:4]`: Elementos del índice 2 al 3 (el final no se incluye).
- `l[2:]`: Desde el índice 2 hasta el final.
- `l[:3]`: Desde el principio hasta el índice 2.
- `l[::2]`: Toda la lista saltando de 2 en 2.
- `l[::-1]`: **Invierte** la lista completa.

## 6. Formas de Recorrer una Lista (Bucles)

Existen 4 formas comunes de iterar sobre los elementos:

1. **Directo:** `for item in l:` (Si solo necesitas los valores).
2. **Por rango:** `for idx in range(len(l)):` (Si necesitas el índice numérico).
3. **Enumerate:** `for idx, value in enumerate(l):` (**Recomendado**: obtienes índice y valor a la vez).
4. **While:** `while idx < len(l):` (Requiere control manual del contador).

## 7. Listas Multidimensionales

Son "listas dentro de listas", ideales para representar tablas o matrices.

```python
lm = [[1, 2], [3, 4]]
print(lm[1][0]) # Accede al valor 3 (Fila 1, Columna 0)
```

## 8. Identidad y Memoria (`id`)

Es importante entender que en Python, al modificar una lista o concatenarla de ciertas formas, puedes estar creando un objeto nuevo o modificando el existente.

- `id(objeto)`: Devuelve el identificador único del objeto en memoria.
- Si concatenas con `l = l + [4]`, el `id` suele cambiar (se crea una lista nueva).
- Si usas `.append()`, el `id` se mantiene (modificas la misma lista).