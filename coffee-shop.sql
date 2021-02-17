SHOW DATABASES;

--creating a coffee shop database
CREATE DATABASE coffee_store;

USE coffee_store;

--creting the table for products
CREATE TABLE produtos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30),
    preco DECIMAL(3,2)
    );
    
    SHOW TABLES;
--creating tables for clients
CREATE TABLE clientes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30),
    sobrenome VARCHAR(30),
    genero ENUM('M','F'),
    telefone VARCHAR(12)
    
);

CREATE TABLE pedidos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    cliente_id INT, 
    hora_pedido DATETIME,
    FOREIGN KEY (produto_id) REFERENCES produtos(id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

SHOW TABLES;
