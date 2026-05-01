# ❌ Triggers BEFORE DELETE y AFTER DELETE en MySQL

## BEFORE DELETE

### ¿Cuándo se ejecuta?

- Se ejecuta antes de que una fila sea eliminada de la tabla.
- Permite acceder a los valores OLD (valores actuales de la fila).
- ❌ No existe NEW.
- ❌ No se pueden modificar los datos (solo lectura).

---

### Sintaxis

```Sql
DELIMITER $$

CREATE TRIGGER nombre_trigger
BEFORE DELETE ON tabla
FOR EACH ROW
BEGIN
  -- instrucciones
END$$

DELIMITER ;
```

---

### ¿Para qué se usa BEFORE DELETE?

- Impedir borrados no permitidos
- Validar condiciones antes de eliminar
- Lanzar errores personalizados
- Comprobar dependencias

---

### Ejemplo: impedir borrar un registro activo

```Sql
DELIMITER $$

CREATE TRIGGER before_users_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
  IF OLD.active = 1 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'No se puede borrar un usuario activo';
  END IF;
END$$

DELIMITER ;
```

---

## AFTER DELETE

### ¿Cuándo se ejecuta?

- Se ejecuta después de que la fila ha sido eliminada.
- Permite acceder a los valores OLD.
- ❌ No existe NEW.
- ❌ No se pueden modificar los datos.

---

### Sintaxis

```Sql
DELIMITER $$

CREATE TRIGGER nombre_trigger
AFTER DELETE ON tabla
FOR EACH ROW
BEGIN
  -- instrucciones
END$$

DELIMITER ;
```

---

### ¿Para qué se usa AFTER DELETE?

- Registrar eliminaciones (auditoría)
- Insertar datos en tablas históricas
- Limpiar tablas relacionadas

---

### Ejemplo: registrar un borrado en una tabla log

```Sql
DELIMITER $$

CREATE TRIGGER after_users_delete
AFTER DELETE ON users
FOR EACH ROW
BEGIN
  INSERT INTO users_log(user_id, deleted_at)
  VALUES (OLD.id, NOW());
END$$

DELIMITER ;
```

---

## Comparación rápida

|Trigger|OLD|NEW|¿Modificar datos?|
|---|---|---|---|
|BEFORE DELETE|✅|❌|❌|
|AFTER DELETE|✅|❌|❌|

---

🔗 Relacionado:

- [[Sintaxis CREATE TRIGGER]]
- [[OLD y NEW en Triggers]]
- [[SIGNAL y control de errores en Triggers]]

#mysql #triggers #delete