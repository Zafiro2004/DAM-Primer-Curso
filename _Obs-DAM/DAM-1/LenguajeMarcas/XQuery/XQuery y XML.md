# 🔗 XQuery y XML

## Integración y Salida

XQuery no solo extrae datos, sino que puede **generar nuevo XML** mezclando contenido literal y expresiones.

### Contenido Literal vs Expresiones
- **Literal XML**: Etiquetas escritas directamente en el código.
- **Expresiones**: Código encerrado entre llaves `{ }` que se evalúa dinámicamente.

---

## Ejemplo de Transformación

Si queremos convertir una lista de libros en una tabla HTML:

```xquery
<html>
  <body>
    <table border="1">
      <tr><th>Título</th><th>Autor</th></tr>
      {
        for $l in doc("libros.xml")//libro
        return 
          <tr>
            <td>{ $l/titulo/text() }</td>
            <td>{ $l/autor/text() }</td>
          </tr>
      }
    </table>
  </body>
</html>
```

---

## Ventajas de usar XQuery sobre XSLT
- Sintaxis más legible y compacta.
- Mejor capacidad para realizar consultas complejas (estilo SQL).
- Ideal para aplicaciones que necesitan extraer datos rápidamente de archivos XML grandes.
