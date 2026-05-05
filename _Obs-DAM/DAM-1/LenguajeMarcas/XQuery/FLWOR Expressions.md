# 🔄 FLWOR Expressions

El corazón de XQuery es la expresión **FLWOR** (pronunciado "flower"), que define el flujo de procesamiento.

## ¿Qué significa FLWOR?

- **F (For)**: Itera sobre una secuencia de nodos.
- **L (Let)**: Asigna un valor a una variable.
- **W (Where)**: Filtra los resultados basados en una condición.
- **O (Order by)**: Ordena los resultados.
- **R (Return)**: Define qué valor o estructura se devuelve.

---

## Ejemplo Completo

```xquery
for $x in doc("libros.xml")//libro
let $precio := $x/precio
where $precio > 30
order by $precio descending
return 
  <resultado>
    { $x/titulo } - Precio: { $precio }
  </resultado>
```

### Desglose:
1. `for`: Recorre cada libro.
2. `let`: Guarda el precio en `$precio`.
3. `where`: Solo libros caros (>30).
4. `order by`: De más caro a más barato.
5. `return`: Crea un nuevo elemento XML con el título y el precio.
