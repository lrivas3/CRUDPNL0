CREATE SCHEMA IF NOT EXISTS control_clientes;

USE control_clientes;

CREATE TABLE IF NOT EXISTS control_clientes.cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    email VARCHAR(30) UNIQUE NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    saldo DOUBLE DEFAULT 0.00
);
