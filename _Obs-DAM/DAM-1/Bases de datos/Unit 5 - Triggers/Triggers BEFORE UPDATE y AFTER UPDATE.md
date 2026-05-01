# 🔄 Triggers BEFORE UPDATE y AFTER UPDATE en MySQL

## BEFORE UPDATE

### ¿Cuándo se ejecuta?

- Se ejecuta antes de que se actualice una fila.
- Permite acceder a OLD (valor anterior) y NEW (valor nuevo).
- Se pueden modificar los valores NEW antes de que se guarden.

---

### Sintaxis

```Sql
DELIMITER $$

CREATE TRIGGER nombre_trigger
BEFORE UPDATE ON tabla
FOR EACH ROW
BEGIN
  -- instrucciones
END$$

DELIMITER ;
```

---

### ¿Para qué se usa BEFORE UPDATE?

- Validar cambios
- Evitar valores incorrectos
- Ajustar datos automáticamente
- Comparar valores antiguos y nuevos

---

### Ejemplo: impedir una bajada de precio

```Sql
DELIMITER $$

CREATE TRIGGER before_products_update
BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
  IF NEW.price < OLD.price THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'No se permite bajar el precio';
  END IF;
END$$

DELIMITER ;
```

---

## AFTER UPDATE

### ¿Cuándo se ejecuta?

- Se ejecuta después de que la fila ha sido actualizada.
- Se puede acceder a OLD y NEW.
- ❌ No se pueden modificar los datos.

---

### Sintaxis

```Sql
DELIMITER $$

CREATE TRIGGER nombre_trigger
AFTER UPDATE ON tabla
FOR EACH ROW
BEGIN
  -- instrucciones
END$$

DELIMITER ;
```

---

### ¿Para qué se usa AFTER UPDATE?

- Auditoría de cambios
- Registro de histórico
- Actualizar tablas auxiliares

---

### Ejemplo: registrar cambios en una tabla log

```Sql
DELIMITER $$

CREATE TRIGGER after_products_update
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
  INSERT INTO products_log(product_id, old_price, new_price, changed_at)
  VALUES (OLD.id, OLD.price, NEW.price, NOW());
END$$

DELIMITER ;
```

---

## Comparación rápida

|Tipo|OLD|NEW|¿Modificar NEW?|
|---|---|---|---|
|BEFORE UPDATE|✅|✅|✅|
|AFTER UPDATE|✅|✅|❌|

---

🔗 Relacionado:

- [[Sintaxis CREATE TRIGGER]]
- [[OLD y NEW en Triggers]]
- [[SIGNAL y control de errores en Triggers]]

#mysql #triggers #update