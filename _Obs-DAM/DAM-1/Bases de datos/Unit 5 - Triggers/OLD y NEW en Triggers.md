# 🔁 OLD y NEW en Triggers de MySQL

## ¿Qué son OLD y NEW?

En los triggers de MySQL, OLD y NEW son referencias que permiten acceder a los valores de las columnas de una fila:

- OLD.columna → valor antes de la operación
- NEW.columna → valor después de la operación

Se utilizan dentro del cuerpo del trigger para consultar o validar datos.

---

## Disponibilidad según el evento

No siempre se puede usar OLD y NEW. Depende del tipo de trigger:

|Evento|OLD disponible|NEW disponible|
|---|---|---|
|INSERT|❌|✅|
|UPDATE|✅|✅|
|DELETE|✅|❌|

> Esta tabla es muy importante para examen.

---

## Uso de OLD

- Representa el valor actual de la fila antes del cambio.
- Es de solo lectura.
- Se usa principalmente en `UPDATE` y `DELETE`.

Ejemplo:

```Sql
IF OLD.stock = 0 THEN
  SIGNAL SQLSTATE '45000'
  SET MESSAGE_TEXT = 'No se puede modificar un producto sin stock';
END IF;
```

---

## Uso de NEW

- Representa el valor nuevo que se va a guardar.
- En triggers BEFORE, se puede modificar.
- En triggers AFTER, es de solo lectura.

Ejemplo:

```Sql
SET NEW.updated_at = NOW();
```

---

## Diferencias clave según el momento

### BEFORE triggers

- Se ejecutan antes de la operación.
- `NEW` se puede modificar.

Ejemplo:

```Sql
SET NEW.price = 0;
```

### AFTER triggers

- Se ejecutan después de la operación.
- `NEW` y `OLD` son solo lectura.

---

## Errores típicos

❌ Usar `OLD` en `INSERT`

❌ Usar `NEW` en `DELETE`

❌ Intentar modificar `NEW` en un trigger `AFTER`

---

## Resumen rápido

```PlainText
INSERT  → NEW ✓  OLD ✗
UPDATE  → NEW ✓  OLD ✓
DELETE  → NEW ✗  OLD ✓
```

---

🔗 Relacionado:

- [[Sintaxis CREATE TRIGGER]]
- [[Triggers BEFORE INSERT y AFTER INSERT]]
- [[Triggers BEFORE UPDATE y AFTER UPDATE]]
- [[Triggers BEFORE DELETE y AFTER DELETE]]

#mysql #triggers #old #new