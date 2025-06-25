--CRIAÇÃO DE BANCO DE DADOS (OPICIONAL, DEPENDE DO SGBD)
CREATE DATABASE IF NOT EXISTS app_database;
Use app_database;

--Tabela de usuários
CREATE TABLE IF NOT EXISTS user (
    user_id INTEGER PRIMARY KEY,
    username VARCHAR (50) NOT NULL UNIQUE,
    email VARCHAR (100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIEMSTAMP,
    is_active BOOLEAN DEFAULT TRUE    

);

--Tabela de produtos 
CREATE TABLE IF NOT EXISTS products(
    product_id INTEGER PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
    description text,
    price DECIMAL (10, 2) NOT NULL,
    stock_quantity INTEGER NOT NULL DEFAULT 0,
    category VARCHAR (50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

--Tabela de pedidos
CREATE TABLE IF NOT EXISTS ordes (
    order_id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20)DEFAULT 'pending'
    FOREIGN KEY (user_id) REFERENCES users(user_id)

);

--Tabela de itens do pedido
CREATE TABLE IF NOT EXISTS order_items (
    order_item_id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)

);