# ⚙️ Funciones y Operadores en XQuery

## Operadores Comunes

- **Comparación**: `=`, `!=`, `<`, `<=`, `>`, `>=`.
- **Lógicos**: `and`, `or`, `not()`.
- **Aritméticos**: `+`, `-`, `*`, `div`, `mod`.

---

## Funciones Integradas

XQuery ofrece funciones potentes para manipular datos:

### Funciones de Strings
- `concat("a", "b")`: Concatena cadenas.
- `substring("Hola", 1, 2)`: Extrae parte de la cadena.
- `upper-case()` / `lower-case()`: Cambia la capitalización.

### Funciones de Nodos y Secuencias
- `count($secuencia)`: Devuelve el número de elementos.
- `sum($secuencia)`: Suma los valores numéricos.
- `avg($secuencia)`: Promedio.

---

## Definición de Funciones Propias

Se pueden crear funciones personalizadas:
```xquery
declare function local:calcularIva($precio as xs:decimal) as xs:decimal {
  $precio * 0.21
};

local:calcularIva(100)
```
