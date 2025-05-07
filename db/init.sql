-- Creación de la tabla clientes
CREATE TABLE IF NOT EXISTS clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creación de la tabla productos
CREATE TABLE IF NOT EXISTS productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio NUMERIC(10, 2) NOT NULL,
    stock INTEGER NOT NULL DEFAULT 0
);

-- Inserción de datos en la tabla clientes
INSERT INTO clientes (nombre, email, password) VALUES
('Laura Torres', 'laura@email.com', 'passlaura'),
('Miguel Díaz', 'miguel@email.com', '123miguel'),
('Sofía Ramírez', 'sofia@email.com', 'sofia456');

-- Inserción de datos en la tabla productos (domésticos)
INSERT INTO productos (nombre, descripcion, precio, stock) VALUES
('Refrigeradora Mabe', 'Refrigeradora de 320L con freezer superior', 1099.99, 7),
('Licuadora Oster', 'Licuadora de vidrio con múltiples velocidades', 89.99, 25),
('Horno Microondas Samsung', 'Microondas 30L con grill', 199.99, 10),
('Aspiradora Philips', 'Aspiradora sin bolsa de alta potencia', 149.99, 12),
('Cafetera Hamilton Beach', 'Cafetera programable 12 tazas', 59.99, 18),
('Ventilador de Pedestal', 'Ventilador de pedestal con control remoto', 49.99, 20),
('Plancha a Vapor', 'Plancha a vapor con base antiadherente', 39.99, 15);
