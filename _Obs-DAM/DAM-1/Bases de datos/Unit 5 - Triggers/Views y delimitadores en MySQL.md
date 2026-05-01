# 👁️ Views y delimitadores en MySQL

## Vistas (Views)

### ¿Qué es una vista?

Una vista es una tabla virtual basada en el resultado de una consulta SQL.

- No almacena datos físicamente.
- Muestra datos de una o varias tablas.
- Se consulta igual que una tabla normal.

---

### ¿Para qué se usan las vistas?

Las vistas se utilizan para:

- simplificar consultas complejas
- mostrar solo ciertas columnas o filas
- ocultar detalles de las tablas reales
- reutilizar consultas frecuentes

---

### Crear una vista

Sintaxis general:

```Sql
CREATE VIEW nombre_vista AS
SELECT columna1, columna2
FROM tabla
WHERE condicion;
```

Ejemplo:

```Sql
CREATE VIEW Clientes_Brasil AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';
```

Consultar la vista:

```Sql
SELECT * FROM Clientes_Brasil;
```

---

### Modificar y eliminar una vista

Modificar o reemplazar una vista:

```Sql
CREATE OR REPLACE VIEW nombre_vista AS
SELECT ...;
```

Eliminar una vista:

```Sql
DROP VIEW nombre_vista;
```

---

## Delimitador en MySQL

### El problema del punto y coma (;)

- MySQL utiliza `;` para indicar el final de una sentencia.
- Los triggers contienen varias sentencias SQL.
- El cliente MySQL interpreta cada `;` como fin de sentencia y provoca errores.

---

### Solución: cambiar el delimitador

Se cambia temporalmente el delimitador usando `DELIMITER`:

```Sql
DELIMITER $$
```

A partir de ese momento, las sentencias terminan en `$$`:

```Sql
CREATE TRIGGER ejemplo_trigger
BEFORE INSERT ON tabla
FOR EACH ROW
BEGIN
  -- instrucciones
END$$
```

Una vez definido el trigger, se vuelve al delimitador original:

```Sql
DELIMITER ;
```

---

### Reglas sobre delimitadores

- El delimitador puede ser uno o varios caracteres (`//`, `$$`, etc.).
- No se recomienda usar `\` porque es carácter de escape.
- El cambio de delimitador es temporal.

---

🔗 Relacionado:

- [[Introducción a Triggers en MySQL]]
- [[Sintaxis CREATE TRIGGER]]

#mysql #views #delimiter #triggers 