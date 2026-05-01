# 🧱 Estructura de un documento XML

## Estructura general

- Un documento XML tiene una estructura jerárquica.
- La información se organiza en forma de árbol.
- Todo el contenido debe estar dentro de un único elemento raíz.

---

## Declaración XML

Un documento XML suele comenzar con una declaración que indica información general.

```Xml
<?xml version="1.0" encoding="UTF-8"?>
```

### Componentes

- `version` → versión de XML (la estándar es 1.0)
- `encoding` → codificación de caracteres (la más habitual es UTF-8)

> La declaración es muy recomendable, aunque técnicamente no siempre obligatoria.

---

## Elemento raíz

- Es el elemento que contiene todo el documento.
- Un XML solo puede tener un único elemento raíz.

Ejemplo:

```Xml
<alumnos>
  <alumno>
    <nombre>Ana</nombre>
  </alumno>
</alumnos>
```

En este caso, `<alumnos>` es el elemento raíz.

---

## Elementos internos

- Dentro del elemento raíz puede haber:
    - otros elementos
    - atributos
    - texto

Ejemplo:

```Xml
<libro isbn="123">
  <titulo>XML básico</titulo>
  <autor>Juan Pérez</autor>
</libro>
```

---

## Estructura jerárquica

- Los elementos se relacionan como:
    - padre
    - hijo
    - hermano
- Esta jerarquía es fundamental para interpretar un XML.

Representación en árbol:

```PlainText
alumnos
└── alumno
    └── nombre
```

---

## Reglas básicas de estructura

Para que un documento XML sea correcto:

- Debe tener un solo elemento raíz
- Todos los elementos deben estar correctamente cerrados
- Los elementos deben estar correctamente anidados

Ejemplo incorrecto ❌:

```Xml
<a>
  <b>
</a>
</b>
```

Ejemplo correcto ✅:

```Xml
<a>
  <b></b>
</a>
```

---

🔗 Relacionado:

- [[Introducción a XML]]
- [[Elementos, atributos y texto en XML]]
- [[Jerarquía y buenas prácticas en XML]]

#xml #estructura #raiz