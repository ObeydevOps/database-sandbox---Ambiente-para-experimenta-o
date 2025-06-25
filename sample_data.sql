--Inser��o de usu�rios de exemplo
INSERT INTO users (username, email) VALUES
('joao_silva','joao@example.com'),
('maria_oliveira','maria@example.com'),
('admin','admin@example.com');

--Inser��o de produtos de exemplo
INSERT INTO products (name, description, price, stock_quantity, category) VALUES
('Notebook elite', 'Notebook de �ltima gera��o', 4500.00, 10, 'Eletronicos'),
('Smartphone Pro', 'Celular com c�mera de 108MP', 3200.00, 15, 'Eletronicos'),
('Mesa de Escrit�rio', 'Mesa em madeira maci�a', 899.90, 5 'M�veis'),
(Cadeira Ergon�mica', 'Cadeira para home office', 650.50, 8, 'M�veis');

--Inser��o de pedidos de exemplo
INSERT INTO orders (user_id, total_amount, status) VALUES
(1, 4500.00, 'completed'),
(2, 3850.40, 'processing');

--Inser��o de itens de pedido de exemplo
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 4500.00),
(2, 2, 1, 3200.00),
(2, 4, 1, 650.50);