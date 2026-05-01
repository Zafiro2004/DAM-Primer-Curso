# 🧱 Sintaxis CREATE TRIGGER en MySQL

## Crear un trigger

Un trigger en MySQL se crea con la sentencia CREATE TRIGGER.

Sintaxis general:

```Sql
CREATE TRIGGER nombre_trigger
{BEFORE | AFTER} {INSERT | UPDATE | DELETE}
ON nombre_tabla
FOR EACH ROW
BEGIN
  -- instrucciones SQL
END;
```

> ⚠️ En la práctica se usa un delimitador distinto al `;`.

---

## Uso del delimitador

Como el cuerpo del trigger puede contener varias sentencias SQL separadas por `;`, es necesario cambiar temporalmente el delimitador.

Ejemplo completo:

```Sql
DELIMITER $$

CREATE TRIGGER ejemplo_trigger
BEFORE INSERT ON productos
FOR EACH ROW
BEGIN
  SET NEW.precio = 0;
END$$

DELIMITER ;
```

---

## Componentes de la sintaxis

- nombre_trigger → nombre único del trigger
- BEFORE / AFTER → momento de ejecución
- INSERT / UPDATE / DELETE → evento que lo dispara
- ON tabla → tabla asociada
- FOR EACH ROW → se ejecuta una vez por cada fila afectada
- BEGIN … END → cuerpo del trigger

---

## BEFORE vs AFTER

- BEFORE
    - Se ejecuta antes de la operación
    - Permite modificar valores `NEW`
    - Se usa para validaciones y ajustes
- AFTER
    - Se ejecuta después de la operación
    - No permite modificar los valores
    - Se usa para auditoría y registros

---

## Acceso a valores: OLD y NEW

Dentro del cuerpo del trigger se pueden usar:

- `NEW.columna` → valor nuevo
- `OLD.columna` → valor anterior

Disponibilidad según el evento:

|Evento|OLD|NEW|
|---|---|---|
|INSERT|❌|✅|
|UPDATE|✅|✅|
|DELETE|✅|❌|

---

## Ejemplo sencillo

```Sql
DELIMITER $$

CREATE TRIGGER before_users_insert
BEFORE INSERT ON users
FOR EACH ROW
BEGIN
  SET NEW.created_at = NOW();
END$$

DELIMITER ;
```

Este trigger asigna automáticamente la fecha de creación antes de insertar un usuario.

---

🔗 Relacionado:

- [[Views y delimitadores en MySQL]]
- [[Triggers BEFORE INSERT y AFTER INSERT]]
- [[OLD y NEW en Triggers]]

#mysql #triggers #create