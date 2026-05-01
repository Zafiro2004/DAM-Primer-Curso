-- 1
    create trigger num1 before insert on Ventas for each row
    begin
        declare n int;
        select stock into n
        from Productos p
        where NEW.producto_id=p.id;

        if(new.cantidad>n) then
            signal sqlstate '45000' set message_text = 'CANTIDAD MAYOR QUE EL STOCK DISPONIBLE';
        end if;
    end;

-- 2
create trigger num2 before insert on Ventas for each row
    begin
        declare n decimal(10,2);

        select NEW.cantidad*p.precio into n
        from Productos p
        where NEW.producto_id=p.id;

        set NEW.total=n;
    end;
create trigger num2 before insert on Ventas for each row
begin
    set NEW.total = NEW.cantidad * (
        select precio
        from Productos
        where id = NEW.producto_id
    );
end;

-- 3
create trigger num3 after insert on Ventas for each row
    begin
        update Productos p set stock = stock-NEW.cantidad
        where NEW.producto_id=p.id;
    end;

-- 4
create trigger num4 after update on Productos for each row
begin
    -- Solo insertamos en la auditoría si el precio ha cambiado realmente
    if (OLD.precio <> NEW.precio) then
        insert into Auditoria_Precios(producto_id, precio_anterior, precio_nuevo)
        values (NEW.id, OLD.precio, NEW.precio);
    end if;
end;

-- 5
update Estadisticas
set total_ventas = (select count(*) from Ventas);
update Estadisticas
set ingresos_totales = (select sum(Ventas.total) from Ventas);

create trigger num5insert after insert on Ventas for each row
    begin
        update Estadisticas
        set total_ventas = total_ventas+1;
        update Estadisticas
        set ingresos_totales = ingresos_totales+NEW.total;
    end;
create trigger num5delete after delete on Ventas for each row
    begin
        update Estadisticas
        set total_ventas=total_ventas-1;
        update Estadisticas
        set ingresos_totales = ingresos_totales-OLD.total;
    end;
create trigger num5update after update on Ventas for each row
begin
    -- Comprobamos si realmente ha cambiado el total para no hacer updates innecesarios
    if (OLD.total <> NEW.total) then
        update Estadisticas
        set ingresos_totales = ingresos_totales - OLD.total + NEW.total;
    end if;
end;

-- 6
create trigger num6 before update on Clientes for each row
begin
    -- Comprobamos que el saldo haya cambiado
    if (OLD.saldo <> NEW.saldo) then
        -- Evaluamos el nuevo saldo
        if (NEW.saldo >= 1000.00) then
            -- Modificamos el valor que se va a guardar en la base de datos
            set NEW.tipo = 'VIP';
        end if;
    end if;
end;
-- 7
create trigger num7 after delete on Ventas for each row
    begin
        update Productos
        set stock=stock+old.cantidad
        where id=OLD.producto_id;
    end;

-- 8
create trigger num8 before delete on Clientes for each row
begin
    -- Verificamos si existe al menos 1 registro en ventas para este cliente
    if exists (select 1 from Ventas where cliente_id = OLD.id) then
        signal sqlstate '45000' set message_text = 'ERROR: No se puede eliminar el cliente porque tiene ventas registradas.';
    end if;
end;

create trigger num8 before delete on Clientes for each row
begin
    -- Variable para guardar el número de compras que ha hecho el cliente
    declare num_ventas int;

    -- Contamos cuántas ventas tienen el ID del cliente que intentamos borrar
    select count(*) into num_ventas
    from Ventas
    where cliente_id = OLD.id;

    -- Si el contador es mayor que 0, significa que hay registros y lanzamos el error
    if (num_ventas > 0) then
        signal sqlstate '45000' set message_text = 'ERROR: No se puede eliminar el cliente porque tiene ventas registradas.';
    end if;
end;
-- Prueba para el Ejercicio 1, 2, 3 y 5 (Al insertar una venta)
-- Debería calcular el total solo, restar 2 unidades al stock del producto 2 y sumar a estadísticas.
INSERT INTO Ventas (cliente_id, producto_id, cantidad) VALUES (3, 1, 4);

-- Prueba para el Ejercicio 1 (Restricción de inventario)
-- Debería dar un error o detenerse porque solo hay 5 cables (producto 5) y pedimos 10.
INSERT INTO Ventas (cliente_id, producto_id, cantidad) VALUES (2, 5, 10);

-- Prueba para el Ejercicio 4 (Auditoría de precios)
-- Debería crear un registro nuevo en la tabla Auditoria_Precios.
UPDATE Productos SET precio = 851.00 WHERE id = 1;

-- Prueba para el Ejercicio 6 (Promoción a VIP)
-- El saldo de Carlos (id 2) pasará de 850 a 1050, el trigger debería cambiar su tipo a 'VIP'.
UPDATE Clientes SET saldo = 1050.00 WHERE id = 2;

-- Prueba para el Ejercicio 7 (Reversión en cascada)
-- Al borrar la venta 1, el stock del ratón debería volver a subir en 2 unidades.
DELETE FROM Ventas WHERE id = 8;

SET time_zone = '+02:00';
-- O alternativamente, si tu MySQL tiene cargadas las zonas horarias por nombre:
-- SET time_zone = 'Europe/Madrid';

INSERT INTO Estadisticas (total_ventas, ingresos_totales) VALUES (0, 0);