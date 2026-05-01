-- 1
create trigger num1 before insert on Libros for each row
    begin
        if(NEW.precio<=0) then
            signal sqlstate '45000' set message_text ='No puede ser un precio negativo';
        end if;
    end;
insert into Libros (titulo, autor, precio, stock, id_categoria, id_proveedor, fecha_alta)
values ('Prueba','Prueba',0,2,1,1,now());

INSERT INTO Libros (titulo, autor, precio, stock, id_categoria, id_proveedor)
VALUES ('El Principito', 'Saint-Exupéry', 9.99, 10, 1, 1);

INSERT INTO Libros (titulo, autor, precio, stock, id_categoria, id_proveedor)
VALUES ('Libro Gratis', 'Autor', -5.00, 10, 1, 1);
-- 2
create trigger num2 before update on Libros for each row
    begin
        if(OLD.stock <> new.stock and NEW.stock<=0) then
            signal sqlstate '45000' set message_text ='No puede ser un stock negativo';
        end if;
    end;
update Libros
set precio = 0
where id_libro=1;

UPDATE Libros SET stock = 5 WHERE id_libro = 1;
UPDATE Libros SET stock = -3 WHERE id_libro = 1;

-- 3
create trigger num3 before insert on Empleados for each row
    begin
        if not exists(select 1 from Empleados where NEW.id_jefe=id_empleado) then
            set NEW.id_jefe=null;
        end if;
    end;
insert into Empleados (nombre, puesto, salario, id_jefe)
values ('Prueba2','cajero',80,10);
INSERT INTO Empleados (nombre, puesto, salario, id_jefe)
VALUES ('Rosa Vega', 'cajero', 1200.00, 1);

-- 4
create trigger num4 before delete on Categorias for each row
    begin
        if exists(select 1 from Libros where OLD.id_categoria=Libros.id_categoria) then
            signal sqlstate '45000' set message_text = 'No se puede eliminar esta categoria';
        end if;
    end;
delete
from Categorias
where id_categoria=1;


-- 5
create trigger num5insert before insert on Empleados for each row
    begin
        if(NEW.puesto='cajero' and new.salario>1500) then
            signal sqlstate '45000' set message_text = 'El cajero no puede tener tanto salario';
        end if;
    end;
create trigger num5update before update on Empleados for each row
    begin
        if(NEW.puesto='cajero' and new.salario>1500) then
            signal sqlstate '45000' set message_text = 'El cajero no puede tener tanto salario';
        end if;
    end;

-- 6
CREATE TRIGGER num6
    AFTER INSERT ON DetalleVenta
    FOR EACH ROW
BEGIN
    UPDATE Ventas
    SET total = total + (NEW.cantidad * NEW.precio_unidad)
    WHERE id_venta = NEW.id_venta;
END;

-- 7
create trigger num7 after delete on DetalleVenta for each row
    begin
        update Ventas
        set total = total - (OLD.cantidad*old.precio_unidad)
        where id_venta = OLD.id_venta;
    end;

-- 8
create trigger num8 after insert on DetalleVenta for each row
    begin
        declare n int;
        select stock into n
        from Libros
        where Libros.id_libro=NEW.id_libro;

        if(NEW.cantidad>n) then
            signal sqlstate '45000' set message_text = 'Stock insuficiente';
        else
            update Libros set stock=stock-NEW.cantidad where NEW.id_libro=id_libro;
        end if;
    end;

-- 9
CREATE TRIGGER num9
    AFTER INSERT ON Devoluciones
    FOR EACH ROW
BEGIN
    -- 1. Actualizamos el stock sumando la cantidad devuelta
    UPDATE Libros
    SET stock = stock + NEW.cantidad
    WHERE id_libro = NEW.id_libro;

    -- 2. Actualizamos el saldo a favor del cliente
    UPDATE Clientes
    SET saldo_favor = saldo_favor + (
        -- Multiplicamos la cantidad por el precio al que lo compró (desde DetalleVenta)
        NEW.cantidad * (
            SELECT precio_unidad
            FROM DetalleVenta
            WHERE id_venta = NEW.id_venta AND id_libro = NEW.id_libro
            limit 1
        )
        )
    -- Buscamos al cliente correcto usando el id_venta
    WHERE id_cliente = (
        SELECT id_cliente
        FROM Ventas
        WHERE id_venta = NEW.id_venta
    );
END;

-- 10
CREATE TRIGGER tg_ventas_completadas_au
    AFTER UPDATE ON Ventas
    FOR EACH ROW
BEGIN
    -- Comprobamos que el estado cambie específicamente a 'completada'
    IF (OLD.estado <> NEW.estado AND NEW.estado = 'completada') THEN
        UPDATE Empleados
        SET ventas_mes = ventas_mes + 1
        -- Buscamos específicamente al empleado que hizo esta venta
        WHERE id_empleado = NEW.id_empleado;
    END IF;
END;

-- 11
CREATE TRIGGER num11
    BEFORE INSERT ON Ventas
    FOR EACH ROW
BEGIN
    SET NEW.id_empleado = (
        SELECT id_empleado
        FROM Empleados
        WHERE puesto = 'cajero'
        ORDER BY ventas_mes ASC
        LIMIT 1
    );
END;

-- 12
CREATE TRIGGER num12
    BEFORE INSERT ON Clientes
    FOR EACH ROW
BEGIN
    DECLARE num_coincidencias INT;
    DECLARE usuario VARCHAR(100);
    DECLARE dominio VARCHAR(100);

    -- 1. Contamos cuántos clientes existen ya con ese mismo nombre
    SET num_coincidencias = (SELECT COUNT(*) FROM Clientes WHERE nombre like concat(NEW.nombre,'%'));

    -- 2. Si ya hay al menos 1, modificamos el email
    IF num_coincidencias > 0 THEN
        -- Extraemos la parte del usuario (antes del @)
        SET usuario = SUBSTRING_INDEX(NEW.email, '@', 1);

        -- Extraemos el dominio (después del @)
        SET dominio = SUBSTRING_INDEX(NEW.email, '@', -1);

        -- Reconstruimos el email: usuario + (numero de coincidencias + 1) + @ + dominio
        SET NEW.email = CONCAT(usuario, (num_coincidencias + 1), '@', dominio);
    END IF;
END;

-- 13
create trigger num13 before insert on Libros for each row
    begin
        if(new.id_proveedor is null ) then
            set NEW.id_proveedor = (
                select id_proveedor
                from Libros
                group by id_proveedor
                order by count(*) asc
                limit 1
                );
        end if;
    end;

-- 14
create trigger num14 after update on Empleados for each row
    begin
        if(old.salario<>NEW.salario) then
            insert into Auditoria(tabla,operacion,valor_antiguo,valor_nuevo)
            values ('Empleados','Update',old.salario,NEW.salario);
        end if;
    end;

-- 15
CREATE TRIGGER num15
    AFTER DELETE ON Libros
    FOR EACH ROW
BEGIN
    INSERT INTO Auditoria (tabla, operacion, valor_antiguo, valor_nuevo)
    VALUES (
               'Libros',
               'DELETE',
               CONCAT('Título: ', OLD.titulo, ' | Autor: ', OLD.autor, ' | Precio: ', OLD.precio),
               NULL            -- Es un borrado, así que no hay un "valor nuevo"
           );
END;

-- 16
create table Historial_Stock(
    id int primary key auto_increment,
    id_libro int, constraint foreign key (id_libro) references Libros(id_libro),
    stock_anterior int,
    stock_nuevo int,
    fecha datetime default CURRENT_TIMESTAMP null
);

create trigger num16 after update on Libros for each row
    begin
        if(OLD.stock<>NEW.stock) then
            insert into Historial_Stock(id_libro, stock_anterior, stock_nuevo)
            values (new.id_libro,old.stock,NEW.stock);
        end if;
    end;

-- 17
CREATE TRIGGER num17
    AFTER UPDATE ON Ventas
    FOR EACH ROW
BEGIN
    -- 1A. Variables para guardar temporalmente lo que lea el cursor
    DECLARE v_id_libro INT;
    DECLARE v_cantidad INT;
    DECLARE fin INT DEFAULT 0; -- Bandera para saber cuándo salir del bucle

    -- 1B. Declarar el cursor para obtener los libros de esta venta concreta
    DECLARE cur_detalles CURSOR FOR
        SELECT id_libro, cantidad
        FROM DetalleVenta
        WHERE id_venta = NEW.id_venta;

    -- 1C. Declarar el Handler: Si el FETCH no encuentra más filas, pone 'fin' a 1
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin = 1;

    -- Comprobamos si el estado acaba de cambiar a 'cancelada'
    IF (OLD.estado <> NEW.estado AND NEW.estado = 'cancelada') THEN

        -- 2. Abrimos el cursor
        OPEN cur_detalles;

        -- Iniciamos el bucle (le damos el nombre 'bucle_reponer')
        bucle_reponer: LOOP

            -- 3. Leemos la fila actual y guardamos los datos en las variables
            FETCH cur_detalles INTO v_id_libro, v_cantidad;

            -- Si el Handler detectó que no hay más datos, salimos del bucle
            IF fin = 1 THEN
                LEAVE bucle_reponer;
            END IF;

            -- Ejecutamos la lógica para esta fila exacta: Reponer el stock
            UPDATE Libros
            SET stock = stock + v_cantidad
            WHERE id_libro = v_id_libro;

        END LOOP bucle_reponer;

        -- 4. Cerramos el cursor
        CLOSE cur_detalles;

    END IF;
END;