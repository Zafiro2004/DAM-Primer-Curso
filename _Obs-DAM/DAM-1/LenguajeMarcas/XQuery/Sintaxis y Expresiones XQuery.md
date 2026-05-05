# 🛠️ Sintaxis y Expresiones XQuery

## Expresiones Básicas

- Una expresión XQuery es una secuencia de valores.
- El resultado de cualquier consulta XQuery es siempre una **secuencia**.

### Tipos de datos básicos
- **Atómicos**: strings, integers, booleans, dates.
- **Nodos**: elementos, atributos, texto.

---

## XPath en XQuery

XQuery utiliza rutas XPath para localizar nodos:
- `/`: Raíz del documento.
- `//`: Busca en cualquier profundidad.
- `[@atributo='valor']`: Filtra por atributo.
- `[condición]`: Filtra por contenido o posición.

### Ejemplo de ruta
```xquery
doc("biblioteca.xml")//libro[precio < 20]/titulo
```
*Extrae los títulos de los libros con precio menor a 20.*
