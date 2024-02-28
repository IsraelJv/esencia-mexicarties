USE herenciamexicarties;

INSERT INTO address (address_id, address, num_int, num_ext, city, country, zip_code)
VALUES
    (1, 'Calle 123', '4', '101', 'Ciudad de México', 'México', '12345'),
    (2, 'Avenida Principal', NULL, '205', 'Monterrey', 'México', '54321'),
    (3, 'Paseo de la Reforma', NULL, '500', 'Ciudad de México', 'México', '67890'),
    (4, 'Boulevard Independencia', NULL, '75', 'Guadalajara', 'México', '45678'),
    (5, 'Calle Principal', '2', '10', 'Puebla', 'México', '98765');
INSERT INTO user (user_id, email_user, name_user, password_user, phone_user, type_user)
VALUES
    (1, 'usuario1@example.com', 'Juan Pérez', '123456', '555-123-4567', 'User'),
    (2, 'usuario2@example.com', 'María González', 'abcdef', '555-987-6543', 'User'),
    (3, 'admin1@example.com', 'Enrique Peña', 'soyeljefe', '555-555-5555', 'Admin'),
    (4, 'admin2@example.com', 'Pedro López', 'password', '555-222-3333', 'Admin'),
    (5, 'usuario3@example.com', 'Ana Martínez', 'cliente123', '555-777-8888', 'User');
   
INSERT INTO PaymentMethods (payment_methods_id, payment_methods)
VALUES
    (1, 'Tarjeta de crédito'),
    (2, 'PayPal'),
    (3, 'Tarjeta de débito');
    
INSERT INTO `order` (`date_time_order`, `total`, `num_articles`, `user_id`, `payment_methods_id`)
VALUES 
('2024-02-21 15:30:00', 850.50, 2, 1, 1),
('2024-02-21 15:30:00', 1000.50, 2, 2, 2),
('2024-02-21 15:30:00', 2500.00, 6, 3, 1),
('2024-02-21 15:30:00', 250.00, 1, 4, 3),
('2024-02-21 15:30:00', 3599.00, 8, 5, 3);

INSERT INTO comment (comment_id, comment, email, name_user)
VALUES 
	(1, 'Hola me gustan mucho sus productos', 'usuario1@example.com', 'Juan Pérez'),
    (2, 'Muy bonitas sus artesanias', 'usuario2@example.com', 'María González'),
    (3, 'Por ustedes quiero conocer México', 'admin1@example.com', 'Enrique Peña'),
    (4, 'Tengo problemas con mi orden, es la 2183', 'admin2@example.com', 'Pedro López'),
    (5, 'Pongan más promociones en sus artículos','usuario3@example.com', 'Ana Martínez');
    
INSERT INTO handicraftsman (handicraftsman_id, name_handicraftsman)
VALUES
    (1, 'Familia Bernabe'),
    (2, 'Remigio Mestas'),
    (3, 'Pedro Blas'),
    (4, 'Victoria Machorro'),
    (5, 'Familia Pérez Santiago');
    
INSERT INTO category (category_id, name_category)
VALUES
    (1, 'Artesanias'),
    (2, 'Ropa'),
    (3, 'Licores');
    
INSERT INTO product (nameProduct, price, stock, SizeClothes, productLocation,
Category_idCategory, Handicraftsman_idHandicraftsman)
VALUES
    ('Vajilla de barro artesanal', 200, 20, NULL, 'Jalisco', 1, 1),
    ('Blusa bordada chedrón', 750, 10, 'M', 'Oaxaca', 2, 2),
    ('Huipil bordado', 870, 10, 'M', 'Puebla', 2, 4),
    ('Vestido bordado', 875, 10, 'M', 'Puebla', 2, 4),
    ('Blusa bordada cuello V', 680, 10, 'M', 'Puebla', 2, 4);
    
SELECT * FROM `order`;
SELECT * FROM `user`;
SELECT * FROM `address`;
SELECT * FROM `product`;
SELECT * FROM `comment`;
SELECT * FROM `handicraftsman`;
SELECT * FROM `paymentmethods`;
SELECT * FROM `category`;