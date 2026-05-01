```python
###
# DICCIONARIS
###
print()

# Creació explicita
d = {1: 2, "a": "b", 3: "c", "hola": 4}

# Mostrar per consola un diccionari
print(d)

# Mida
print("Mida", len(d))

# Accès a element o items de la llista
print(d["a"])

# Inserció d'elements (directament o amb mètode update())
d["nova_clau"] = "nou_valor"
print("Item afegit", d["nova_clau"])

d.update({"una_altra_clau": 12345})
print(d)

# Modificació d'elements directament o amb mètode update()
d["nova_clau"] = "valor_modificat"
print("Item modificat", d["nova_clau"])

d.update({"nova_clau": "valor_modificat_2", 1:5, 25:"Afegit nou"})
print("Una modificació més...", d["nova_clau"])

# Eliminació d'elements (pop, popitem, del, clear)
d.pop("una_altra_clau")
print(">", d)

print(d)
d.popitem() 
d.popitem() 
print(d)

# "Accès" a valor que no existeixen directament
print(d["no existeix"])

# Emprant get()
if d.get("no existeix") is None:
    print("No he trobat la clau al diccionari")

# Recorrer un diccionari
for clau in d:
    print("key",clau)

for clau in  d.keys():
    print("key",clau)

for item in d.items():
    print("Item",item)
    a, b = item
    print("a:",a,"b:",b)

for a, b in d.items():
    print("a:",a,"b:",b)

for v in d.values():
    print("Value:",v)

c = d.copy()
d["mismo"] = "1"
print(c)
```

# Diccionarios en Python: Guía de Referencia

Un **diccionario** es una estructura de datos que almacena pares de **clave-valor** (key-value). A diferencia de las listas, no se accede a los elementos por su índice numérico, sino por su clave única.

## 1. Creación y Propiedades Básicas

Para crear un diccionario, se utilizan llaves `{}` y los pares se separan por dos puntos `:`.

- **Creación explícita:**

```python
d = {1: 2, "a": "b", 3: "c", "hola": 4}
```

- **Mida (Longitud):** Se utiliza la función `len()` para saber cuántos pares contiene.

```python
print(len(d)) # Devuelve el número de elementos
```

## 2. Acceso y Manipulación

### Inserción y Modificación

Existen dos formas principales de añadir o cambiar elementos:

1. **Asignación directa:** `d["clave"] = valor` (si la clave existe, la sobreescribe; si no, la crea).
2. **Método `.update()`:** Permite añadir o modificar múltiples elementos a la vez.

```python
# Inserción directa
d["nova_clau"] = "nou_valor"

# Uso de update
d.update({"otra_clau": 12345, "a": "nuevo_valor_para_a"})
```

### Eliminación de elementos

- **`.pop("clave")`:** Elimina la clave especificada y devuelve su valor.
- **`.popitem()`:** Elimina y devuelve el **último** par clave-valor añadido al diccionario.

## 3. Gestión de Errores al Acceder

Es importante manejar qué ocurre cuando intentamos acceder a una clave que no existe:

1. **Acceso directo (`d["clave"]`):** Si la clave no existe, Python lanzará un error de tipo `KeyError` y detendrá el programa.
2. **Método `.get("clave")`:** Es la forma **segura**. Si la clave no existe, devuelve `None` (o un valor por defecto) en lugar de dar error.

```python
# Forma segura de comprobar existencia
if d.get("no_existeix") is None:
    print("La clave no se ha encontrado")
```

## 4. Recorrido (Iteración)

Podemos recorrer un diccionario de varias maneras según qué información necesitemos:

|**Método**|**Qué devuelve**|**Ejemplo de uso**|
|---|---|---|
|`for clau in d:`|Solo las **claves**|`print(clau)`|
|`d.keys()`|Vista de todas las **claves**|`for k in d.keys():`|
|`d.values()`|Vista de todos los **valores**|`for v in d.values():`|
|`d.items()`|Pares de **(clave, valor)**|`for k, v in d.items():`|

**Nota sobre el Desempaquetado (Unpacking):** Al usar `.items()`, podemos asignar directamente la clave y el valor a dos variables distintas en el mismo bucle: `for a, b in d.items():` donde `a` es la clave y `b` es el valor.

## 5. Copia de Diccionarios

Si igualas un diccionario a otro (`d2 = d1`), ambos apuntarán al mismo objeto en memoria. Para crear una copia independiente, usa el método `.copy()`.

```python
c = d.copy() # 'c' es una copia independiente de 'd'
d["mismo"] = "1" # Este cambio no afectará a 'c'
```