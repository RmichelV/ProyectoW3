CREATE TABLE Menu (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);



CREATE TABLE Rol (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);



CREATE TABLE RolMenu (
    rol_id INT,
    menu_id INT,
    FOREIGN KEY (rol_id) REFERENCES rol(id),
    FOREIGN KEY (menu_id) REFERENCES menu(id)
);



CREATE TABLE Usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    apellido VARCHAR(255),
    fecha_nacimiento DATE,
    correo VARCHAR(255) UNIQUE,
    contraseña VARCHAR(255),
    rol_id INT,
    FOREIGN KEY (rol_id) REFERENCES rol(id)
);


------------------
CREATE TABLE Proveedor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(20)
);


CREATE TABLE Tipo_de_producto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);


CREATE TABLE Producto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    tipo_de_producto_id INT,
    precio_unitario DECIMAL(10,2),
    stock INT,
    FOREIGN KEY (tipo_de_producto_id) REFERENCES tipo_de_producto(id)
);


CREATE TABLE ProductoProveedor (
    producto_id INT,
    proveedor_id INT,
    FOREIGN KEY (producto_id) REFERENCES producto(id),
    FOREIGN KEY (proveedor_id) REFERENCES proveedor(id)
);


CREATE TABLE Comentario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    producto_id INT,
    comentario TEXT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (producto_id) REFERENCES producto(id)
);


CREATE TABLE Carrito (
    id INT PRIMARY KEY AUTO_INCREMENT,
    producto_id INT,
    usuario_id INT,
    FOREIGN KEY (producto_id) REFERENCES producto(id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);


CREATE TABLE Venta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    fecha DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);


CREATE TABLE DetalleDeVenta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    producto_id INT,
    cantidad INT,
    precio_total DECIMAL(10, 2),
    venta_id INT,
    FOREIGN KEY (producto_id) REFERENCES producto(id),
    FOREIGN KEY (venta_id) REFERENCES Venta(id)
);

