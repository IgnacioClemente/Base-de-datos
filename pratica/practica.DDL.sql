-- Crear la base de datos
drop database if exists empresa;
CREATE DATABASE empresa;

-- Usar la base de datos
USE empresa;

-- Crear la tabla Empleados
CREATE TABLE Empleados (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  edad INT,
  direccion VARCHAR(100),
  salario DECIMAL(10, 2)
);

-- Crear la tabla Departamentos
CREATE TABLE Departamentos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  ubicacion VARCHAR(100)
);

-- Crear la tabla Asignaciones
CREATE TABLE Asignaciones (
  id INT PRIMARY KEY AUTO_INCREMENT,
  empleado_id INT,
  departamento_id INT,
  fecha_asignacion DATE,
  FOREIGN KEY (empleado_id) REFERENCES Empleados(id),
  FOREIGN KEY (departamento_id) REFERENCES Departamentos(id)
);

-- Crear la tabla Clientes
CREATE TABLE Clientes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  direccion VARCHAR(100),
  telefono VARCHAR(20)
);

-- Crear la tabla Pedidos
CREATE TABLE Pedidos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT,
  fecha_pedido DATE,
  total DECIMAL(10, 2),
  FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

-- Crear la tabla Productos
CREATE TABLE Productos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion TEXT,
  precio DECIMAL(10, 2)
);

-- Crear la tabla Detalles_Pedido
CREATE TABLE Detalles_Pedido (
  id INT PRIMARY KEY AUTO_INCREMENT,
  pedido_id INT,
  producto_id INT,
  cantidad INT,
  FOREIGN KEY (pedido_id) REFERENCES Pedidos(id),
  FOREIGN KEY (producto_id) REFERENCES Productos(id)
);

create table Proveedores(
id int AUTO_INCREMENT primary key,
nombre varchar(50),
direccion varchar(50)
);

drop table Proveedores;

alter table Departamentos
CHANGE nombre nombre_dep varchar(50);

select * from Departamentos;

alter table Departamentos
rename departamentos;

select * from departamentos;

alter table departamentos
add localidad varchar(50);

select * from departamentos;

alter table departamentos
drop  localidad;