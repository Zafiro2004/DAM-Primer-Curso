# ✅ Documentos bien formados y válidos en XML

## Documento bien formado

Un documento XML está bien formado cuando cumple todas las reglas sintácticas básicas del lenguaje XML.

Es el requisito mínimo para que un XML pueda leerse y procesarse.

### Reglas principales

- Tener un único elemento raíz
- Todas las etiquetas deben estar correctamente cerradas
- Las etiquetas deben estar bien anidadas
- Los nombres de las etiquetas distinguen mayúsculas y minúsculas
- Los atributos deben ir entre comillas

Ejemplo bien formado ✅:

```Xml
<alumno>
  <nombre>Ana</nombre>
  <edad>20</edad>
</alumno>
```

Ejemplo NO bien formado ❌:

```Xml
<alumno>
  <nombre>Ana</edad>
</alumno>
```

---

## Importancia de estar bien formado

- Si un XML no está bien formado, no puede:
    - validarse
    - procesarse
    - interpretarse correctamente
- Un solo error sintáctico invalida todo el documento.

---

## Documento válido

Un documento XML es válido cuando:

- Está bien formado ✅
- Además, cumple unas reglas externas que definen su estructura

Estas reglas se definen mediante:

- una DTD
- o un XML Schema (XSD)

---

## Diferencia clave: bien formado vs válido

|Característica|Bien formado|Válido|
|---|---|---|
|Cumple reglas XML|✅|✅|
|Cumple una estructura definida|❌|✅|
|Necesita DTD/XSD|❌|✅|

> 👉 Todo documento válido es bien formado, pero no todo documento bien formado es válido.

---

## Ejemplo ilustrativo

Si existe una regla que dice:

- todo `<alumno>` debe tener `<edad>`

Entonces este documento es bien formado pero NO válido ❌:

```Xml
<alumno>
  <nombre>Ana</nombre>
</alumno>
```

---

## ¿Por qué es necesaria la validación?

- La sintaxis por sí sola no garantiza una buena estructura.
- La validación:
    - previene errores
    - asegura documentos coherentes
    - facilita el intercambio de datos entre sistemas

---

🔗 Relacionado:

- [[Espacios de nombres en XML]]
- [[Validación XML: DTD y XSD]]

#xml #validacion #bien-formado #valido