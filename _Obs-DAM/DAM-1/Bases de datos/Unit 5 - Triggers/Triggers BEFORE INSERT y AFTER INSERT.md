# ➕ Triggers BEFORE INSERT y AFTER INSERT en MySQL

## BEFORE INSERT

### ¿Cuándo se ejecuta?

- Se ejecuta antes de que se inserte una nueva fila en la tabla.
- Permite acceder a los valores NEW.
- ✅ Se pueden modificar los valores NEW antes de que se guarden.
- ❌ No se puede usar OLD porque la fila todavía no existe.

---

### Sintaxis

```Sql
DELIMITER $$

CREATE TRIGGER nombre_trigger
BEFORE INSERT ON tabla
FOR EACH ROW
BEGIN
  -- instrucciones
END$$

DELIMITER ;
```

---

### ¿Para qué se usa BEFORE INSERT?

- Validar datos antes de guardarlos
- Ajustar valores automáticamente
- Asignar valores por defecto
- Impedir inserciones incorrectas

---

### Ejemplo: ajustar un valor antes de insertar

```Sql
DELIMITER $$

CREATE TRIGGER before_users_insert
BEFORE INSERT ON users
FOR EACH ROW
BEGIN
  IF NEW.created_at IS NULL THEN
    SET NEW.created_at = NOW();
  END IF;
END$$

DELIMITER ;
```

Este trigger asegura que siempre haya una fecha de creación.

---

## AFTER INSERT

### ¿Cuándo se ejecuta?

- Se ejecuta después de que la fila ha sido insertada.
- Permite acceder a los valores NEW.
- ❌ No se pueden modificar los valores.
- ❌ No existe OLD.

---

### Sintaxis

```Sql
DELIMITER $$

CREATE TRIGGER nombre_trigger
AFTER INSERT ON tabla
FOR EACH ROW
BEGIN
  -- instrucciones
END$$

DELIMITER ;
```

---

### ¿Para qué se usa AFTER INSERT?

- Registrar inserciones (logs)
- Actualizar tablas auxiliares
- Enviar notificaciones

---

### Ejemplo: registrar una inserción

```Sql
DELIMITER $$

CREATE TRIGGER after_users_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN
  INSERT INTO users_log(user_id, created_at)
  VALUES (NEW.id, NOW());
END$$

DELIMITER ;
```

---

## Comparación rápida

|Trigger|OLD|NEW|¿Modificar NEW?|
|---|---|---|---|
|BEFORE INSERT|❌|✅|✅|
|AFTER INSERT|❌|✅|❌|

---

🔗 Relacionado:

- [[Sintaxis CREATE TRIGGER]]
- [[OLD y NEW en Triggers]]
- [[Triggers BEFORE UPDATE y AFTER UPDATE]]

#mysql #triggers #insert