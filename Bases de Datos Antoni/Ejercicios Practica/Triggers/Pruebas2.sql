-- ============================================================
--   COMANDOS DE PRUEBA — TRIGGERS MySQL (libreria_db)
-- ============================================================

USE libreria_db;

-- ─────────────────────────────────────────────
--  BLOQUE A — Control de datos e integridad
-- ─────────────────────────────────────────────

-- Ejercicio 1: Precio negativo o cero
INSERT INTO Libros (titulo, autor, precio, stock, id_categoria, id_proveedor)
VALUES ('Libro Test', 'Autor Test', 0.00, 10, 1, 1);        -- ERROR esperado
INSERT INTO Libros (titulo, autor, precio, stock, id_categoria, id_proveedor)
VALUES ('Libro Test', 'Autor Test', -5.00, 10, 1, 1);       -- ERROR esperado
INSERT INTO Libros (titulo, autor, precio, stock, id_categoria, id_proveedor)
VALUES ('Libro Válido', 'Autor Test', 9.99, 10, 1, 1);      -- OK

-- Ejercicio 2: Stock negativo
UPDATE Libros SET stock = -1 WHERE id_libro = 1;             -- ERROR esperado
UPDATE Libros SET stock = 5  WHERE id_libro = 1;             -- OK
SELECT stock FROM Libros WHERE id_libro = 1;                 -- 5

-- Ejercicio 3: Jefe inexistente → NULL
INSERT INTO Empleados (nombre, puesto, salario, id_jefe)
VALUES ('Nuevo Empleado', 'cajero', 1200.00, 999);           -- OK, id_jefe queda NULL
SELECT nombre, id_jefe FROM Empleados WHERE nombre = 'Nuevo Empleado';

-- Ejercicio 4: Borrar categoría con libros
DELETE FROM Categorias WHERE id_categoria = 1;               -- ERROR esperado
INSERT INTO Categorias (nombre) VALUES ('Vacía');
DELETE FROM Categorias WHERE nombre = 'Vacía';               -- OK

-- Ejercicio 5: Salario máximo de cajero
INSERT INTO Empleados (nombre, puesto, salario)
VALUES ('Cajero Caro', 'cajero', 2000.00);                   -- ERROR esperado
UPDATE Empleados SET salario = 1600.00
WHERE puesto = 'cajero' AND id_empleado = 2;                 -- ERROR esperado
UPDATE Empleados SET salario = 2500.00
WHERE puesto = 'encargado' AND id_empleado = 1;              -- OK


-- ─────────────────────────────────────────────
--  BLOQUE B — Automatización de cálculos
-- ─────────────────────────────────────────────

-- Ejercicio 6: Actualizar total de venta (INSERT detalle)
INSERT INTO Ventas (id_cliente, id_empleado) VALUES (1, 2);
SET @v = LAST_INSERT_ID();
INSERT INTO DetalleVenta (id_venta, id_libro, cantidad, precio_unidad) VALUES (@v, 1, 2, 12.50);
INSERT INTO DetalleVenta (id_venta, id_libro, cantidad, precio_unidad) VALUES (@v, 2, 1, 35.00);
SELECT total FROM Ventas WHERE id_venta = @v;                -- 60.00

-- Ejercicio 7: Actualizar total de venta (DELETE detalle)
SET @det = (SELECT id_detalle FROM DetalleVenta WHERE id_venta = @v LIMIT 1);
DELETE FROM DetalleVenta WHERE id_detalle = @det;
SELECT total FROM Ventas WHERE id_venta = @v;                -- 35.00

-- Ejercicio 8: Descontar stock al vender
SELECT stock FROM Libros WHERE id_libro = 3;                 -- 20
INSERT INTO Ventas (id_cliente, id_empleado) VALUES (2, 2);
INSERT INTO DetalleVenta (id_venta, id_libro, cantidad, precio_unidad)
VALUES (LAST_INSERT_ID(), 3, 5, 18.00);
SELECT stock FROM Libros WHERE id_libro = 3;                 -- 15
INSERT INTO Ventas (id_cliente, id_empleado) VALUES (2, 2);
INSERT INTO DetalleVenta (id_venta, id_libro, cantidad, precio_unidad)
VALUES (LAST_INSERT_ID(), 3, 999, 18.00);                    -- ERROR esperado

-- Ejercicio 9: Gestionar devolución
SELECT stock       FROM Libros   WHERE id_libro   = 3;       -- 15
SELECT saldo_favor FROM Clientes WHERE id_cliente = 2;       -- 0.00
INSERT INTO Devoluciones (id_venta, id_libro, cantidad, motivo)
VALUES (2, 3, 2, 'Libro dañado');
SELECT stock       FROM Libros   WHERE id_libro   = 3;       -- 17
SELECT saldo_favor FROM Clientes WHERE id_cliente = 2;       -- 36.00

-- Ejercicio 10: Incrementar ventas_mes del empleado
SELECT ventas_mes FROM Empleados WHERE id_empleado = 2;      -- 0
UPDATE Ventas SET estado = 'completada' WHERE id_venta = 2;
SELECT ventas_mes FROM Empleados WHERE id_empleado = 2;      -- 1
UPDATE Ventas SET estado = 'cancelada'  WHERE id_venta = 1;
SELECT ventas_mes FROM Empleados WHERE id_empleado = 2;      -- sigue 1


-- ─────────────────────────────────────────────
--  BLOQUE C — Asignaciones automáticas
-- ─────────────────────────────────────────────

-- Ejercicio 11: Asignar cajero con menos ventas
SELECT id_empleado, nombre, ventas_mes FROM Empleados WHERE puesto = 'cajero';
INSERT INTO Ventas (id_cliente, id_empleado) VALUES (3, 0); -- id_empleado sobreescrito
SELECT id_venta, id_empleado FROM Ventas ORDER BY id_venta DESC LIMIT 1;

-- Ejercicio 12: Email único para nuevos clientes
INSERT INTO Clientes (nombre, email)
VALUES ('Carlos Soto', 'csoto@gmail.com');
INSERT INTO Clientes (nombre, email) VALUES ('Carlos Soto', 'csoto@gmail.com');
SELECT nombre, email FROM Clientes WHERE nombre LIKE 'Carlos%';
-- csoto@gmail.com / csoto2@gmail.com / csoto3@gmail.com

-- Ejercicio 13: Asignar proveedor con menos libros
SELECT id_proveedor, COUNT(*) AS total FROM Libros GROUP BY id_proveedor;
INSERT INTO Libros (titulo, autor, precio, stock, id_categoria)
VALUES ('Nuevo Libro 2', 'Autor X', 15.00, 5, 2);             -- sin id_proveedor
SELECT titulo, id_proveedor FROM Libros WHERE titulo = 'Nuevo Libro';


-- ─────────────────────────────────────────────
--  BLOQUE D — Auditoría y registro
-- ─────────────────────────────────────────────

-- Ejercicio 14: Auditoría de cambios de salario
UPDATE Empleados SET salario = 1351.00 WHERE id_empleado = 2;
SELECT usuario, tabla, operacion, valor_antiguo, valor_nuevo, fecha_hora
FROM Auditoria WHERE tabla = 'Empleados' ORDER BY fecha_hora DESC LIMIT 1;

-- Ejercicio 15: Auditoría de borrado de libros
INSERT INTO Libros (titulo, autor, precio, stock, id_categoria, id_proveedor)
VALUES ('Libro Temporal', 'Autor Borrable', 9.99, 1, 1, 1);
SET @tmp = LAST_INSERT_ID();
DELETE FROM Libros WHERE id_libro = @tmp;
SELECT operacion, valor_antiguo FROM Auditoria
WHERE tabla = 'Libros' ORDER BY fecha_hora DESC LIMIT 1;

-- Ejercicio 16: Historial de cambios de stock
UPDATE Libros SET stock = 50 WHERE id_libro = 1;
UPDATE Libros SET stock = 45 WHERE id_libro = 1;
SELECT id_libro, stock_anterior, stock_nuevo, fecha
FROM Historial_Stock WHERE id_libro = 1;


-- ─────────────────────────────────────────────
--  BLOQUE E — Retos avanzados
-- ─────────────────────────────────────────────

-- Ejercicio 17: Cancelación en cascada de ventas
SELECT id_libro, stock FROM Libros WHERE id_libro IN (1, 2);
INSERT INTO Ventas (id_cliente, id_empleado, estado) VALUES (1, 2, 'pendiente');
SET @vc = LAST_INSERT_ID();
INSERT INTO DetalleVenta VALUES (NULL, @vc, 1, 3, 12.50);
INSERT INTO DetalleVenta VALUES (NULL, @vc, 2, 2, 35.00);
UPDATE Ventas SET estado = 'cancelada' WHERE id_venta = @vc;
SELECT id_libro, stock FROM Libros WHERE id_libro IN (1, 2); -- stock repuesto

-- Ejercicio 18: Borrado de categoría en cascada
SELECT id_libro, titulo, id_categoria FROM Libros WHERE id_categoria = 1;
DELETE FROM Categorias WHERE id_categoria = 1;               -- OK gracias al trigger
SELECT id_libro, titulo, id_categoria FROM Libros WHERE id_categoria IS NULL;
SELECT * FROM Categorias WHERE id_categoria = 1;             -- Empty set

-- Ejercicio 19: Tabla Contador genérica
SELECT * FROM Contador;
INSERT INTO Libros (titulo, autor, precio, stock, id_categoria, id_proveedor)
VALUES ('Libro Contador', 'Test', 10.00, 5, 1, 1);
SELECT * FROM Contador WHERE entidad = 'libros';             -- +1
DELETE FROM Libros WHERE titulo = 'Libro Contador';
SELECT * FROM Contador WHERE entidad = 'libros';             -- vuelve al original

-- Ejercicio 20: Límite de ventas pendientes por cliente
INSERT INTO Ventas (id_cliente, id_empleado, estado) VALUES (1, 2, 'pendiente'); -- OK
INSERT INTO Ventas (id_cliente, id_empleado, estado) VALUES (1, 2, 'pendiente'); -- OK
INSERT INTO Ventas (id_cliente, id_empleado, estado) VALUES (1, 2, 'pendiente'); -- OK
INSERT INTO Ventas (id_cliente, id_empleado, estado) VALUES (1, 2, 'pendiente'); -- ERROR esperado




-- Ver a qué cliente pertenece la venta 2
SELECT id_venta, id_cliente FROM Ventas WHERE id_venta = 2;

-- Ver si existe ese detalle de venta (libro 3 en venta 2)
SELECT * FROM DetalleVenta WHERE id_venta = 2 AND id_libro = 3;