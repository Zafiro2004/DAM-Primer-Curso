# 🚨 SIGNAL y control de errores en Triggers

## ¿Qué es SIGNAL?

`SIGNAL` es una instrucción de MySQL que permite lanzar errores de forma manual desde un trigger o procedimiento almacenado.

Se usa principalmente para:

- impedir operaciones no válidas
- aplicar reglas de negocio estrictas
- devolver mensajes de error personalizados

---

## SQLSTATE '45000'

Para errores definidos por el usuario se utiliza normalmente:

```Sql
SQLSTATE '45000'
```

Este código indica un error genérico definido por el usuario.

---

## Sintaxis básica de SIGNAL

```Sql
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Mensaje de error';
```

- `MESSAGE_TEXT` es el texto que verá el usuario
- La ejecución se interrumpe inmediatamente

---

## ¿Cuándo se usa SIGNAL?

✅ Principalmente en triggers BEFORE:

- `BEFORE INSERT`
- `BEFORE UPDATE`
- `BEFORE DELETE`

❌ No suele tener sentido en triggers `AFTER`, porque la operación ya se ha ejecutado.

---

## Ejemplo: impedir insertar un valor incorrecto

```Sql
DELIMITER $$

CREATE TRIGGER before_products_insert
BEFORE INSERT ON products
FOR EACH ROW
BEGIN
  IF NEW.price < 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El precio no puede ser negativo';
  END IF;
END$$

DELIMITER ;
```

---

## Ejemplo: impedir borrar registros protegidos

```Sql
DELIMITER $$

CREATE TRIGGER before_users_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
  IF OLD.role = 'admin' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'No se puede borrar un administrador';
  END IF;
END$$

DELIMITER ;
```

---

## Comportamiento de SIGNAL

- Cancela la operación (`INSERT`, `UPDATE` o `DELETE`)
- No se ejecutan triggers posteriores
- Se muestra el mensaje al cliente SQL o a la aplicación

---

## Errores típicos

❌ Usar `SIGNAL` en triggers `AFTER` esperando revertir la acción

❌ Usar mensajes poco claros

❌ No justificar reglas de negocio

---

## Resumen rápido

```PlainText
SIGNAL → lanza error manual
SQLSTATE '45000' → error definido por el usuario
Uso recomendado → BEFORE triggers
```

---

🔗 Relacionado:

- [[Triggers BEFORE INSERT y AFTER INSERT]]
- [[Triggers BEFORE UPDATE y AFTER UPDATE]]
- [[Triggers BEFORE DELETE y AFTER DELETE]]
- [[OLD y NEW en Triggers]]

#mysql #triggers #signal #errores