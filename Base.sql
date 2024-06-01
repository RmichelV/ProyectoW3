CREATE TABLE Menu (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

CREATE TABLE Rol (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

CREATE TABLE RolMenu (
    rolId INT,
    menuId INT,
    FOREIGN KEY (rolId) REFERENCES rol(id),
    FOREIGN KEY (menuId) REFERENCES menu(id)
);

CREATE TABLE Usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    apellido VARCHAR(255),
    fecha_nacimiento DATE,
    correo VARCHAR(255) UNIQUE,
    contraseña VARCHAR(255),
    rolId INT,
    FOREIGN KEY (rolId) REFERENCES rol(id)
);

CREATE TABLE Proveedor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(20)
);

CREATE TABLE TipoDeProducto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
);

CREATE TABLE Producto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    tipoDeProductoId INT,
    precioUnitario DECIMAL(10,2),
    stock INT,
    FOREIGN KEY (tipoDeProductoId) REFERENCES TipoDeProducto(id)
);

CREATE TABLE ProductoProveedor (
    productoId INT,
    proveedorId INT,
    FOREIGN KEY (productoId) REFERENCES Producto(id),
    FOREIGN KEY (proveedorId) REFERENCES Proveedor(id)
);

CREATE TABLE Comentario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuarioId INT,
    productoId INT,
    contenido TEXT,
    FOREIGN KEY (usuarioId) REFERENCES usuario(id),
    FOREIGN KEY (productoId) REFERENCES producto(id)
);

CREATE TABLE Carrito (
    id INT PRIMARY KEY AUTO_INCREMENT,
    productoId INT,
    usuarioId INT,
    FOREIGN KEY (productoId) REFERENCES producto(id),
    FOREIGN KEY (usuarioId) REFERENCES usuario(id)
);

CREATE TABLE Venta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuarioId INT,
    fecha DATE,
    FOREIGN KEY (usuarioId) REFERENCES usuario(id)
);

CREATE TABLE DetalleDeVenta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    productoId INT,
    cantidad INT,
    precioTotal DECIMAL(10, 2),
    ventaId INT,
    FOREIGN KEY (productoId) REFERENCES Producto(id),
    FOREIGN KEY (ventaId) REFERENCES Venta(id)
);

CREATE TABLE Marca {
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255)
};

CREATE TABLE ProductoProveedor (
    productoId INT,
    marcaId INT,
    FOREIGN KEY (productoId) REFERENCES Producto(id),
    FOREIGN KEY (marcaId) REFERENCES Marca(id)
); 

CREATE TABLE DatosQr {
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuarioId INT,
    monto DECIMAL(10,2),
    qr VARCHAR(255)
};
