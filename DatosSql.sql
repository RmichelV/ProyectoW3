INSERT INTO Menu (nombre) VALUES
('Inicio'),
('Catálogo'),
('Inicio de sesión'),
('Registrarse'),
('Cerrar sesión'),
('Lista de usuarios'),
('Agregar productos'),
('Panel de administración'),
('Mis compras'),
('Contacto'),
('Completo');

INSERT INTO Rol (nombre) VALUES
('Administrador'),
('Empleado'),
('Cliente'),
('Usuario');



INSERT INTO RolMenu (rolId, menuId) VALUES
(1, 11),
(2, 1),
(2, 2),
(2, 5),
(2, 6),
(2, 7),
(3, 1),
(3, 2),
(3, 5),
(3, 9),
(3, 10),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 10);

INSERT INTO Usuario (nombre, apellido, fechaNacimiento, correo, contraseña, rolId) VALUES
('Juan', 'Pérez', '1985-01-15', 'juan.perez@example.com', 'password123', 1),
('Ana', 'Gómez', '1990-04-22', 'ana.gomez@example.com', 'password123', 2),
('Luis', 'Sánchez', '1992-07-09', 'luis.sanchez@example.com', 'password123', 3),
('Marta', 'López', '1988-11-30', 'marta.lopez@example.com', 'password123', 4),
('Pedro', 'Martínez', '1995-03-25', 'pedro.martinez@example.com', 'password123', 3),
('Carla', 'Díaz', '1991-06-18', 'carla.diaz@example.com', 'password123', 2),
('José', 'Fernández', '1983-12-10', 'jose.fernandez@example.com', 'password123', 1),
('Laura', 'Romero', '1996-09-07', 'laura.romero@example.com', 'password123', 4),
('Mario', 'Ortiz', '1989-02-11', 'mario.ortiz@example.com', 'password123', 3),
('Sofía', 'Morales', '1993-05-19', 'sofia.morales@example.com', 'password123', 2);

----------------------------------------------------
INSERT INTO Proveedor (nombre, direccion, telefono, descripcion) VALUES
('Intel Corporation', 'Av. Villazón, La Paz', '212-345678', 'Proveedor de procesadores y componentes de hardware.'),
('AMD Inc', 'Calle 16 de Julio, Cochabamba', '212-234567', 'Proveedor de procesadores y tarjetas gráficas.'),
('NVIDIA Corporation', 'Calle 21 de Calacoto, La Paz', '212-345679', 'Proveedor de tarjetas gráficas y soluciones de IA.'),
('Logitech', 'Av. Banzer, Santa Cruz', '212-123456', 'Proveedor de periféricos y accesorios de computadora.'),
('Corsair', 'Calle Sucre, Potosí', '212-456789', 'Proveedor de componentes de hardware y periféricos.'),
('Kingston', 'Calle Ayacucho, Sucre', '212-567890', 'Proveedor de memorias RAM y dispositivos de almacenamiento.'),
('Samsung', 'Av. Arce, La Paz', '212-678901', 'Proveedor de dispositivos electrónicos y componentes.'),
('LG Electronics', 'Av. Aniceto Arce, Tarija', '212-789012', 'Proveedor de productos electrónicos y electrodomésticos.'),
('Dell Technologies', 'Av. Pando, Cochabamba', '212-890123', 'Proveedor de computadoras y soluciones tecnológicas.'),
('HP Inc', 'Calle España, Santa Cruz', '212-901234', 'Proveedor de impresoras y computadoras personales.');

INSERT INTO Marca (nombre) VALUES
('NVIDIA'),
('Logitech'),
('Corsair'),
('Samsung'),
('Seagate'),
('Kingston'),
('Intel'),
('NZXT'),
('HP'),
('Dell');

INSERT INTO TipoDeProducto (nombre) VALUES
('Tarjeta Gráfica'),
('Mouse'),
('Teclado'),
('Monitor'),
('Disco Duro'),
('Memoria RAM'),
('Procesador'),
('Fuente de Poder'),
('Gabinete'),
('Parlantes');

INSERT INTO Producto (nombre, tipoDeProductoId, precioUnitario, stock) VALUES
('NVIDIA GeForce RTX 3080', 1, 4839.30, 50),
('Logitech G502 Hero', 2, 339.88, 150),
('Corsair K95 RGB Platinum', 3, 1359.53, 75),
('Samsung Odyssey G7', 4, 4079.05, 30),
('Seagate BarraCuda 2TB', 5, 403.18, 100),
('Kingston HyperX Fury 16GB', 6, 603.45, 200),
('Intel Core i9-11900K', 7, 3697.44, 40),
('Corsair RM850x', 8, 863.66, 60),
('NZXT H510', 9, 583.84, 80),
('Logitech Z906', 10, 2878.72, 25);

INSERT INTO ProductoProveedor (productoId, marcaId) VALUES
(1, 1),  -- NVIDIA GeForce RTX 3080 - NVIDIA
(2, 2),  -- Logitech G502 Hero - Logitech
(3, 3),  -- Corsair K95 RGB Platinum - Corsair
(4, 4),  -- Samsung Odyssey G7 - Samsung
(5, 5),  -- Seagate BarraCuda 2TB - Seagate
(6, 6),  -- Kingston HyperX Fury 16GB - Kingston
(7, 7),  -- Intel Core i9-11900K - Intel
(8, 3),  -- Corsair RM850x - Corsair
(9, 8),  -- NZXT H510 - NZXT
(10, 2);  -- Logitech Z906 - Logitech



INSERT INTO Comentario (usuarioId, productoId, contenido) VALUES
(1, 1, 'La NVIDIA GeForce RTX 3080 es increíble para juegos en 4K. Muy recomendada.'),
(2, 2, 'El Logitech G502 Hero es muy cómodo y preciso. Ideal para gaming.'),
(3, 3, 'El Corsair K95 RGB Platinum tiene una excelente respuesta y muchas funciones.'),
(4, 4, 'El monitor Samsung Odyssey G7 tiene una calidad de imagen impresionante.'),
(5, 5, 'El Seagate BarraCuda 2TB ofrece un gran rendimiento y almacenamiento suficiente.'),
(6, 6, 'La memoria Kingston HyperX Fury 16GB es rápida y fiable.'),
(7, 7, 'El Intel Core i9-11900K es perfecto para tareas intensivas y gaming.'),
(8, 8, 'La fuente de poder Corsair RM850x es muy silenciosa y eficiente.'),
(9, 9, 'El gabinete NZXT H510 es muy espacioso y bien ventilado.'),
(10, 10, 'Los parlantes Logitech Z906 tienen un sonido envolvente impresionante.'),
(1, 2, 'El ratón Logitech G502 Hero es bastante ergonómico. Lo uso para trabajar y jugar.'),
(2, 4, 'El Samsung Odyssey G7 es un poco caro, pero vale cada centavo.'),
(3, 6, 'La memoria Kingston HyperX Fury es ideal para mejorar el rendimiento del sistema.'),
(4, 8, 'La fuente de poder Corsair RM850x es una excelente inversión para cualquier PC gamer.'),
(5, 10, 'Los parlantes Logitech Z906 ofrecen una calidad de sonido de cine en casa.');


INSERT INTO Carrito (productoId, usuarioId) VALUES
(1, 3),  -- Usuario Luis Sánchez (Cliente) agrega NVIDIA GeForce RTX 3080
(2, 5),  -- Usuario Pedro Martínez (Cliente) agrega Logitech G502 Hero
(3, 9),  -- Usuario Mario Ortiz (Cliente) agrega Corsair K95 RGB Platinum
(4, 3),  -- Usuario Luis Sánchez (Cliente) agrega Samsung Odyssey G7
(5, 5),  -- Usuario Pedro Martínez (Cliente) agrega Seagate BarraCuda 2TB
(6, 9),  -- Usuario Mario Ortiz (Cliente) agrega Kingston HyperX Fury 16GB
(7, 3),  -- Usuario Luis Sánchez (Cliente) agrega Intel Core i9-11900K
(8, 5),  -- Usuario Pedro Martínez (Cliente) agrega Corsair RM850x
(9, 9),  -- Usuario Mario Ortiz (Cliente) agrega NZXT H510
(10, 3); -- Usuario Luis Sánchez (Cliente) agrega Logitech Z906

-- Inserciones en la tabla Venta
INSERT INTO Venta (usuarioId, fecha) VALUES
(3, '2024-06-01'),  -- Venta para el usuario Luis Sánchez (Cliente)
(5, '2024-06-02'),  -- Venta para el usuario Pedro Martínez (Cliente)
(9, '2024-06-03'),  -- Venta para el usuario Mario Ortiz (Cliente)
(3, '2024-06-04'),  -- Venta para el usuario Luis Sánchez (Cliente)
(5, '2024-06-05'),  -- Venta para el usuario Pedro Martínez (Cliente)
(9, '2024-06-06'),  -- Venta para el usuario Mario Ortiz (Cliente)
(3, '2024-06-07'),  -- Venta para el usuario Luis Sánchez (Cliente)
(5, '2024-06-08'),  -- Venta para el usuario Pedro Martínez (Cliente)
(9, '2024-06-09'),  -- Venta para el usuario Mario Ortiz (Cliente)
(3, '2024-06-10');  -- Venta para el usuario Luis Sánchez (Cliente)

-- Asumiendo que los IDs de las ventas generadas son del 1 al 10.

-- Inserciones en la tabla DetalleDeVenta
INSERT INTO DetalleDeVenta (productoId, cantidad, precioTotal, ventaId) VALUES
(1, 1, 4839.30, 1),  -- Venta de 1 unidad de NVIDIA GeForce RTX 3080 en la venta 1
(2, 1, 339.88, 2),   -- Venta de 1 unidad de Logitech G502 Hero en la venta 2
(3, 1, 1359.53, 3),  -- Venta de 1 unidad de Corsair K95 RGB Platinum en la venta 3
(4, 1, 4079.05, 4),  -- Venta de 1 unidad de Samsung Odyssey G7 en la venta 4
(5, 1, 403.18, 5),   -- Venta de 1 unidad de Seagate BarraCuda 2TB en la venta 5
(6, 1, 603.45, 6),   -- Venta de 1 unidad de Kingston HyperX Fury 16GB en la venta 6
(7, 1, 3697.44, 7),  -- Venta de 1 unidad de Intel Core i9-11900K en la venta 7
(8, 1, 863.66, 8),   -- Venta de 1 unidad de Corsair RM850x en la venta 8
(9, 1, 583.84, 9),   -- Venta de 1 unidad de NZXT H510 en la venta 9
(10, 1, 2878.72, 10); -- Venta de 1 unidad de Logitech Z906 en la venta 10

-- Inserciones en la tabla DatosQr
INSERT INTO DatosQr (usuarioId, monto, qr) VALUES
(3, 4839.30, 'QR_CODE_1'),  -- Datos QR para la venta de Luis Sánchez (Cliente)
(5, 339.88, 'QR_CODE_2'),   -- Datos QR para la venta de Pedro Martínez (Cliente)
(9, 1359.53, 'QR_CODE_3'),  -- Datos QR para la venta de Mario Ortiz (Cliente)
(3, 4079.05, 'QR_CODE_4'),  -- Datos QR para la venta de Luis Sánchez (Cliente)
(5, 403.18, 'QR_CODE_5'),   -- Datos QR para la venta de Pedro Martínez (Cliente)
(9, 603.45, 'QR_CODE_6'),   -- Datos QR para la venta de Mario Ortiz (Cliente)
(3, 3697.44, 'QR_CODE_7'),  -- Datos QR para la venta de Luis Sánchez (Cliente)
(5, 863.66, 'QR_CODE_8'),   -- Datos QR para la venta de Pedro Martínez (Cliente)
(9, 583.84, 'QR_CODE_9'),   -- Datos QR para la venta de Mario Ortiz (Cliente)
(3, 2878.72, 'QR_CODE_10'); -- Datos QR para la venta de Luis Sánchez (Cliente)
