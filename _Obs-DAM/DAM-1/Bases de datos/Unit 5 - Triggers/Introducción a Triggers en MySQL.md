# ⚡ Introducción a Triggers en MySQL

## ¿Qué es un trigger?

Un trigger en MySQL es un programa almacenado que se ejecuta automáticamente cuando ocurre un determinado evento sobre una tabla.

Los eventos que pueden disparar un trigger son:

- `INSERT`
- `UPDATE`
- `DELETE`

El trigger se ejecuta sin que el usuario tenga que llamarlo explícitamente.

---

## ¿Para qué sirven los triggers?

Los triggers se utilizan principalmente para:

- aplicar reglas de negocio
- validar datos antes de guardarlos
- mantener tablas de resumen o estadísticas
- registrar cambios (auditoría)
- impedir operaciones no permitidas

---

## Características principales

- Se ejecutan automáticamente
- Están asociados a una tabla concreta
- Se ejecutan por cada fila afectada (`FOR EACH ROW`)
- No devuelven resultados al usuario
- Forman parte de la lógica interna de la base de datos

---

## Eventos y momentos de ejecución

Un trigger se define combinando:

### Tipo de evento

- `INSERT`
- `UPDATE`
- `DELETE`

### Momento de ejecución

- BEFORE → antes de que se ejecute la operación
- AFTER → después de que se ejecute la operación

Ejemplos:

```Sql
BEFORE INSERT
AFTER UPDATE
```

---

## Triggers BEFORE y AFTER

|Tipo|¿Cuándo se ejecuta?|Uso habitual|
|---|---|---|
|BEFORE|Antes de la operación|Validar o modificar datos|
|AFTER|Después de la operación|Auditoría, registros|

---

## Limitaciones de los triggers

- No pueden devolver resultados
- No se ejecutan manualmente
- En MySQL solo puede haber un trigger por tabla, evento y momento
- No pueden llamar directamente a otros triggers

---

## Ejemplo conceptual

```PlainText
INSERT en tabla
    ↓
BEFORE INSERT trigger
    ↓
INSERT real
    ↓
AFTER INSERT trigger
```

---

🔗 Relacionado:

- [[Views y delimitadores en MySQL]]
- [[Sintaxis CREATE TRIGGER]]

#mysql #triggers #introduccion