INSERT INTO productos (id_producto, nombre, categoria, precio, stock) VALUES
(1, 'Laptop HP', 'Computadoras', 1200.99, 10),
(2, 'iPhone 15', 'Celulares', 999.99, 15),
(3, 'Mouse Logitech', 'Accesorios', 29.99, 30),
(4, 'Monitor Samsung 27"', 'Monitores', 350.50, 8),
(5, 'SSD Kingston 1TB', 'Almacenamiento', 120.00, 20);

INSERT INTO clientes (id_cliente, nombre, telefono, correo_electronico) VALUES
(1, 'Juan Pérez', '555-1234', 'juan.perez@example.com'),
(2, 'Ana Gómez', '555-5678', 'ana.gomez@example.com'),
(3, 'Carlos López', '555-9101', 'carlos.lopez@example.com'),
(4, 'Laura Torres', '555-1122', 'laura.torres@example.com'),
(5, 'Pedro Martínez', '555-3344', 'pedro.martinez@example.com');

INSERT INTO ventas (id_venta, fecha, id_cliente, total) VALUES
(1, '2024-02-01', 1, 1229.99),
(2, '2024-02-02', 2, 1020.50),
(3, '2024-02-03', 3, 999.99),
(4, '2024-02-04', 4, 350.50),
(5, '2024-02-05', 5, 29.99);

INSERT INTO empleados (id_empleado, nombre, salario, sucursal) VALUES
(1, 'María Ramírez', 1500.00, 'Sucursal Centro'),
(2, 'José Rodríguez', 1800.00, 'Sucursal Norte'),
(3, 'Elena Fernández', 1700.00, 'Sucursal Sur'),
(4, 'Ricardo Díaz', 1600.00, 'Sucursal Este'),
(5, 'Sofía Méndez', 1550.00, 'Sucursal Oeste');

INSERT INTO inventarios (id_inventario, id_producto, cantidad) VALUES
(1, 1, 10),
(2, 2, 15),
(3, 3, 30),
(4, 4, 8),
(5, 5, 20);

INSERT INTO proveedores (id_proveedor, nombre, telefono, direccion) VALUES
(1, 'TechSupplier S.A.', '555-4455', 'Av. Tecnológica #123'),
(2, 'Distribuidora PC', '555-6677', 'Calle Informática #45'),
(3, 'ElectroWorld', '555-7788', 'Plaza Comercial #23'),
(4, 'MacroComponentes', '555-8899', 'Zona Industrial #12'),
(5, 'Almacen Digital', '555-9900', 'Centro de Logística #8');

INSERT INTO productos_proveedores (id_producto, id_proveedor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

