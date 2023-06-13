-- Insertar datos en la tabla Empleados
INSERT INTO Empleados (nombre, apellido, edad, direccion, salario)
VALUES ('Juan', 'Pérez', 30, 'Calle Principal 123', 2500.00);

INSERT INTO Empleados (nombre, apellido, edad, direccion, salario)
VALUES ('María', 'López', 28, 'Avenida Central 456', 2800.00);

-- Insertar datos en la tabla Departamentos
INSERT INTO Departamentos (nombre_dep, ubicacion)
VALUES ('Ventas', 'Edificio A, Piso 2');

INSERT INTO Departamentos (nombre_dep, ubicacion)
VALUES ('Recursos Humanos', 'Edificio B, Piso 1');

-- Insertar datos en la tabla Asignaciones
INSERT INTO Asignaciones (empleado_id, departamento_id, fecha_asignacion)
VALUES (1, 1, '2023-01-01');

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (nombre, direccion, telefono)
VALUES ('Cliente A', 'Avenida Principal 789', '123456789');

INSERT INTO Clientes (nombre, direccion, telefono)
VALUES ('Cliente B', 'Calle Secundaria 321', '987654321');

-- Insertar datos en la tabla Pedidos
INSERT INTO Pedidos (cliente_id, fecha_pedido, total)
VALUES (1, '2023-03-01', 150.00);

INSERT INTO Pedidos (cliente_id, fecha_pedido, total)
VALUES (2, '2023-03-15', 250.00);

-- Insertar datos en la tabla Productos
INSERT INTO Productos (nombre, descripcion, precio)
VALUES ('Producto X', 'Descripción del Producto X', 10.00);

INSERT INTO Productos (nombre, descripcion, precio)
VALUES ('Producto Y', 'Descripción del Producto Y', 20.00);

-- Insertar datos en la tabla Detalles_Pedido
INSERT INTO Detalles_Pedido (pedido_id, producto_id, cantidad)
VALUES (1, 1, 5);

INSERT INTO Detalles_Pedido (pedido_id, producto_id, cantidad)
VALUES (2, 2, 3);

-- Insertar datos en la tabla Empleados
INSERT INTO Empleados (nombre, apellido, edad, direccion, salario)
VALUES ('Pedro', 'Gómez', 35, 'Calle Secundaria 789', 3000.00);

INSERT INTO Empleados (nombre, apellido, edad, direccion, salario)
VALUES ('Laura', 'Hernández', 32, 'Avenida Central 654', 3200.00);

-- Insertar datos en la tabla Departamentos
INSERT INTO Departamentos (nombre_dep, ubicacion)
VALUES ('Finanzas', 'Edificio B, Piso 3');

INSERT INTO Departamentos (nombre_dep, ubicacion)
VALUES ('Producción', 'Edificio C, Piso 1');

-- Insertar datos en la tabla Asignaciones
INSERT INTO Asignaciones (empleado_id, departamento_id, fecha_asignacion)
VALUES (3, 2, '2023-03-01');

INSERT INTO Asignaciones (empleado_id, departamento_id, fecha_asignacion)
VALUES (4, 1, '2023-04-01');

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (nombre, direccion, telefono)
VALUES ('Cliente C', 'Avenida Principal 987', '456123789');

INSERT INTO Clientes (nombre, direccion, telefono)
VALUES ('Cliente D', 'Calle Secundaria 654', '789123456');

-- Insertar datos en la tabla Pedidos
INSERT INTO Pedidos (cliente_id, fecha_pedido, total)
VALUES (1, '2023-05-01', 180.00);

INSERT INTO Pedidos (cliente_id, fecha_pedido, total)
VALUES (2, '2023-05-15', 350.00);

-- Insertar datos en la tabla Productos
INSERT INTO Productos (nombre, descripcion, precio)
VALUES ('Producto Z', 'Descripción del Producto Z', 15.00);

INSERT INTO Productos (nombre, descripcion, precio)
VALUES ('Producto W', 'Descripción del Producto W', 25.00);

-- Insertar datos en la tabla Detalles_Pedido
INSERT INTO Detalles_Pedido (pedido_id, producto_id, cantidad)
VALUES (3, 1, 3);

INSERT INTO Detalles_Pedido (pedido_id, producto_id, cantidad)
VALUES (4, 2, 4);

-- Insertar datos en la tabla Empleados
INSERT INTO Empleados (nombre, apellido, edad, direccion, salario)
VALUES ('Ana', 'Ramírez', 27, 'Avenida Principal 456', 2800.00);

INSERT INTO Empleados (nombre, apellido, edad, direccion, salario)
VALUES ('Carlos', 'Torres', 33, 'Calle Secundaria 321', 3200.00);

-- Insertar datos en la tabla Departamentos
INSERT INTO Departamentos (nombre_dep, ubicacion)
VALUES ('Marketing', 'Edificio A, Piso 3');

INSERT INTO Departamentos (nombre_dep, ubicacion)
VALUES ('Logística', 'Edificio C, Piso 2');

-- Insertar datos en la tabla Asignaciones
INSERT INTO Asignaciones (empleado_id, departamento_id, fecha_asignacion)
VALUES (5, 1, '2023-06-01');

INSERT INTO Asignaciones (empleado_id, departamento_id, fecha_asignacion)
VALUES (6, 2, '2023-06-15');

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (nombre, direccion, telefono)
VALUES ('Cliente E', 'Avenida Principal 654', '987654321');

INSERT INTO Clientes (nombre, direccion, telefono)
VALUES ('Cliente F', 'Calle Secundaria 987', '123456789');

-- Insertar datos en la tabla Pedidos
INSERT INTO Pedidos (cliente_id, fecha_pedido, total)
VALUES (3, '2023-07-01', 200.00);

INSERT INTO Pedidos (cliente_id, fecha_pedido, total)
VALUES (4, '2023-07-15', 400.00);

-- Insertar datos en la tabla Productos
INSERT INTO Productos (nombre, descripcion, precio)
VALUES ('Producto A', 'Descripción del Producto A', 12.00);

INSERT INTO Productos (nombre, descripcion, precio)
VALUES ('Producto B', 'Descripción del Producto B', 18.00);

-- Insertar datos en la tabla Detalles_Pedido
INSERT INTO Detalles_Pedido (pedido_id, producto_id, cantidad)
VALUES (5, 1, 4);

INSERT INTO Detalles_Pedido (pedido_id, producto_id, cantidad)
VALUES (6, 2, 5);

update departamentos set nombre_dep = 'Esquivos', ubicacion = 'Disero'  where id = 3;

select * from departamentos;

delete from departamentos where nombre_dep='Esquivos';

insert into departamentos values('7','Gernan','Boedo');

select * from departamentos;