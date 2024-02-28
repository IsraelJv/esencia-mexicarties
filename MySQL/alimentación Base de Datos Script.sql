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
   
INSERT INTO payment_methods (payment_methods_id, payment_methods)
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
    (3, 'Pedro Linares'),
    (4, 'Victoria Machorro'),
    (5, 'Familia Pérez Santiago'),
    (6, 'Huitzilli Burgos'),
    (7, 'José Xahuentitla Palacios'),
    (8, 'Familia Xurawe'),
    (9, 'Pedro Peñasco'),
    (10, 'Marilú Hernández'),
    (11, 'Jacobo Ángeles'),
    (12, 'Alberto Cuellar'),
    (13, 'Familia Salazar'),
    (14, 'Ignacio Sandoval'),
    (15, 'Francisco Lares'),
    (16, 'Alberto Cuellar'),
    (17, 'Ignacio Sandoval'),
    (18, 'Familia Salazar'),
    (19, 'Jorge Aguero'),
    (20, 'Rafael Chávez');
    
INSERT INTO category (category_id, name_category)
VALUES
    (1, 'Artesanias'),
    (2, 'Ropa'),
    (3, 'Licores');
    
INSERT INTO product (name_product, url, price, stock, size_clothes, product_location,`description`, category_id, handicraftsman_id)
VALUES
("Vajilla de barro artesanal", "https://drive.google.com/file/d/1sta4YW0KubDGDmOr4OWs70GhsEp8ue9K/view?usp=sharing", 200, 2, NULL, "Jalisco", "Conjunto de vajilla artesanal pintada a mano", 1, 1),
("Taza de Alebrije Colorido", "https://drive.google.com/file/d/16hdrCb5JPdQjirfu5pedmx-Q5UqAT751/view?usp=sharing", 150, 3, NULL, "Ciudad de Mexico", "Taza de alebrije tallada y pintada a mano", 1, 3),
("Máscaras de Madera", "https://drive.google.com/file/d/14MP9xZWbF1UzmmNx1Q_jmB7nks3IexrY/view?usp=sharing", 184, 4, NULL, "Quintana Roo", "Máscaras tradicionales de madera talladas a mano", 1, 10),
("Figuras de Hojalata", "https://drive.google.com/file/d/1rNu_IPdQi8qMGoj4TgVQWl2HHaaFcv-b/view?usp=sharing", 154, 5, NULL, "Jalisco", "Figuras decorativas de hojalata pintadas a mano", 1, 4),
("Talavera Mexicana", "https://drive.google.com/file/d/1th880Fk4BplYjtZWPj7ldGdsZD79pS9g/view?usp=sharing", 80, 6, NULL, "Puebla", "Piezas de cerámica de talavera con diseños tradicionales", 1, 13),
("Vajilla de barro artesanal", "https://drive.google.com/file/d/17Y0kAl9eHDuTprr-cBreGr33VKArzV7I/view?usp=sharing", 200, 7, NULL, "Jalisco", "Conjunto de vajilla artesanal pintada a mano", 1, 1),
("Jarrones", "https://drive.google.com/file/d/1A4p4YZcUKHi94IQ1hWDKMdBRFvfT_TSz/view?usp=sharing", 133, 8, NULL, "Jalisco", "Jarrones de Barro Negro de Tonalá Jalisco", 1, 1),
("Cerámica de Oaxaca", "https://drive.google.com/file/d/1IE6i-dKiHpm_BSNuAVUtOpo65DuuY6xc/view?usp=sharing", 113, 9, NULL, "Oaxaca", "Cerámica tradicional de Oaxaca con motivos autóctonos", 1, 11),
("Alebrijes de Xochimilco", "https://drive.google.com/file/d/1eOCpO3Afdks-SKoDG8I7ISoDUTLwCGz1/view?usp=sharing", 296, 10, NULL, "Ciudad de México", "Alebrijes hechos en Xochimilco con colores llamativos", 1, 3),
("Arte Huichol", "https://drive.google.com/file/d/1LBPgkeniOEu_m7Ha10USmLVncJi2Qkfy/view?usp=sharing", 129, 11, NULL, "Nayarit", "Arte Huichol con chaquiras y diseños coloridos", 1, 8),
("Tapete Huichol", "https://drive.google.com/file/d/1_zYKT9kIO3MyhT9orjeDgl8FwAv0GGfs/view?usp=sharing", 1840, 12, NULL, "Nayarit", "Tapete con bordado tradicional huichol", 1, 8),
("La Catrina", "https://drive.google.com/file/d/1wh62foLUaJN16i3VgslEduJXDp9pB6d4/view?usp=sharing", 64, 13, NULL, "Aguascalientes", "Icónica figura mexicana, elegante representación esquelética de la muerte, originaria de la cultura popular y de la obra del artista José Guadalupe Posada, que simboliza la igualdad ante la muerte y la riqueza de la tradición mexicana.", 1, 12),
("Bolsa bordada yucateca", "https://drive.google.com/file/d/1to03GDlneTMXy-19ndpp08kWPggvf0Zn/view?usp=sharing", 280, 14, NULL, "Yucatán", "Bolsa tracional bordada", 1, 1),
("Arte en Barro Negro", "https://drive.google.com/file/d/1zA5vVqK173diiA5nFQtf6hZesy8KXpqP/view?usp=sharing", 102, 15, NULL, "Oaxaca", "Piezas de arte en barro negro de San Bartolo Coyotepec", 1, 11),
("Arte mimbre", "https://drive.google.com/file/d/1NmHl8pjDmVPmew2p_bFwzpOWiG-3BQbw/view?usp=sharing", 150, 16, NULL, "Querétaro", "Juego artesanal de mimbre", 1, 20),
("Cestería de Oaxaca", "https://drive.google.com/file/d/1Itp7jyBxDqkA-rvNl8snASbnM_YlZU38/view?usp=sharing", 205, 17, NULL, "Oaxaca", "Cestería elaborada con técnicas tradicionales de Oaxaca", 1, 11),
("Muñeca Lele", "https://drive.google.com/file/d/1ZVkI7tisMVu9zuXFKwui6kwCi1HKP7dc/view?usp=sharing", 250, 18, NULL, "Querétaro", "Muñeca de trapo tradicional mexicana", 1, 20),
("Cerámica de Metepec", "https://drive.google.com/file/d/12IqRkYj73kKFKGoZ6na-ssiKkvc9H21S/view?usp=sharing", 113, 19, NULL, "Estado de México", "Árbol de la vida con diseños tradicionales y coloridos de Metepec", 1, 15),
("Taza de Alebrije", "https://drive.google.com/file/d/15di1TlFc-6C5vagjvDnZ6tmEnTmhYTyn/view?usp=sharing", 141, 20, NULL, "Ciudad de México", "Taza colorida con diseños de alebrijes", 1, 3),
("Alebrije", "https://drive.google.com/file/d/1IYL-leAEEbkmMD2u3TQVYUuhkEo8guWY/view?usp=sharing", 200, 21, NULL, "Ciudad de México", "Alebrije de madera de Ciudad de México", 1, 10),
("Artesanía en Plata", "https://drive.google.com/file/d/1bBFAPElUyukxe61PMYL0GGU0CXz-bzz6/view?usp=sharing", 165, 22, NULL, "Guerrero", "Joyas y accesorios de plata elaborados artesanalmente", 1, 12),
("Artesanía en Vidrio Soplado", "https://drive.google.com/file/d/1xrGst3K33AGXUzQxoKnxPxbJp_0k6CSG/view?usp=sharing", 258, 23, NULL, "Jalisco", "Piezas de vidrio soplado con diseños únicos", 1, 14),
("Aretes de plata", "https://drive.google.com/file/d/13Cyeu2YrY77F8YLZ9YYCjBGCPJWXEWCW/view?usp=sharing", 200, 24, NULL, "Guerrero", "Aretes de plata mexicana de Taxco, Guerrero", 1, 12),
("Talavera Mexicana", "https://drive.google.com/file/d/1wX7XTFtXtNUKpyoOrnEcBYSIpAHjC5r0/view?usp=sharing", 80, 25, NULL, "Puebla", "Jarrón  de talavera poblana", 1, 13),
("Blusa bordada blanca", "https://drive.google.com/file/d/11C2QT0SuABS-qScQu5hM0GjNRQ2KMe4b/view?usp=sharing", 800, 5, 'CH', "Puebla", "Esta blusa blanca resalta por sus intrincados bordados, creando un diseño único y femenino. La combinación de la sencillez del blanco con la complejidad del bordado la convierte en una prenda versátil y elegante.", 2, 4),
("Blusa bordada blanca", "https://drive.google.com/file/d/11C2QT0SuABS-qScQu5hM0GjNRQ2KMe4b/view?usp=sharing", 800, 5, 'M', "Puebla", "Esta blusa blanca resalta por sus intrincados bordados, creando un diseño único y femenino. La combinación de la sencillez del blanco con la complejidad del bordado la convierte en una prenda versátil y elegante.", 2, 4),
("Blusa bordada blanca", "https://drive.google.com/file/d/11C2QT0SuABS-qScQu5hM0GjNRQ2KMe4b/view?usp=sharing", 800, 5, 'G', "Puebla", "Esta blusa blanca resalta por sus intrincados bordados, creando un diseño único y femenino. La combinación de la sencillez del blanco con la complejidad del bordado la convierte en una prenda versátil y elegante.", 2, 4),
("Blusa bordada cuello V", "https://drive.google.com/file/d/1RZPEH7obLRZuxK73UEiM-6qMSLanJ1EE/view?usp=sharing", 680, 5, 'CH', "Puebla", "Una blusa de cuello en V con exquisitos bordados que le añaden un toque distintivo. Perfecta para ocasiones informales o para realzar tu estilo casual con un toque de la artesanía mexicana.", 2, 4),
("Blusa bordada cuello V", "https://drive.google.com/file/d/1RZPEH7obLRZuxK73UEiM-6qMSLanJ1EE/view?usp=sharing", 680, 5, 'M', "Puebla", "Una blusa de cuello en V con exquisitos bordados que le añaden un toque distintivo. Perfecta para ocasiones informales o para realzar tu estilo casual con un toque de la artesanía mexicana.", 2, 4),
("Blusa bordada cuello V", "https://drive.google.com/file/d/1RZPEH7obLRZuxK73UEiM-6qMSLanJ1EE/view?usp=sharing", 680, 5, 'G', "Puebla", "Una blusa de cuello en V con exquisitos bordados que le añaden un toque distintivo. Perfecta para ocasiones informales o para realzar tu estilo casual con un toque de la artesanía mexicana.", 2, 4),
("Huipil bordado", "https://drive.google.com/file/d/1BYI1TnAL3BigCGh54NVNydr-oJqljTnS/view?usp=sharing", 870, 5, 'CH', "Puebla", "El huipil bordado es una pieza tradicional mexicana que destaca por sus colores vibrantes y bordados detallados. Esta prenda representa la conexión con la cultura indígena y es una obra de arte portátil.", 2, 4),
("Huipil bordado", "https://drive.google.com/file/d/1BYI1TnAL3BigCGh54NVNydr-oJqljTnS/view?usp=sharing", 870, 5, 'M', "Puebla", "El huipil bordado es una pieza tradicional mexicana que destaca por sus colores vibrantes y bordados detallados. Esta prenda representa la conexión con la cultura indígena y es una obra de arte portátil.", 2, 4),
("Huipil bordado", "https://drive.google.com/file/d/1BYI1TnAL3BigCGh54NVNydr-oJqljTnS/view?usp=sharing", 870, 5, 'G', "Puebla", "El huipil bordado es una pieza tradicional mexicana que destaca por sus colores vibrantes y bordados detallados. Esta prenda representa la conexión con la cultura indígena y es una obra de arte portátil.", 2, 4),
("Vestido bordado", "https://drive.google.com/file/d/1GJm93ESYxWTfEYcgbCbrFKVL2IHcTzSf/view?usp=sharing", 875, 5, 'CH', "Puebla", "Un vestido encantador con bordados que cuentan historias. La fusión de la elegancia y la artesanía mexicana hacen de este vestido una elección única para ocasiones especiales.", 2, 4),
("Vestido bordado", "https://drive.google.com/file/d/1GJm93ESYxWTfEYcgbCbrFKVL2IHcTzSf/view?usp=sharing", 875, 5, 'M', "Puebla", "Un vestido encantador con bordados que cuentan historias. La fusión de la elegancia y la artesanía mexicana hacen de este vestido una elección única para ocasiones especiales.", 2, 4),
("Vestido bordado", "https://drive.google.com/file/d/1GJm93ESYxWTfEYcgbCbrFKVL2IHcTzSf/view?usp=sharing", 875, 5, 'G', "Puebla", "Un vestido encantador con bordados que cuentan historias. La fusión de la elegancia y la artesanía mexicana hacen de este vestido una elección única para ocasiones especiales.", 2, 4),
("Vestido bordado juvenil", "https://drive.google.com/file/d/1bBp4Ryt-W30gFzGSDL_UxEMPNdg7n7S4/view?usp=sharing", 858, 5, 'CH', "Puebla", "Este vestido juvenil destaca por su diseño fresco y moderno, combinado con bordados que reflejan la tradición. Perfecto para eventos casuales con un toque distintivo.", 2, 4),
("Vestido bordado juvenil", "https://drive.google.com/file/d/1bBp4Ryt-W30gFzGSDL_UxEMPNdg7n7S4/view?usp=sharing", 858, 5, 'M', "Puebla", "Este vestido juvenil destaca por su diseño fresco y moderno, combinado con bordados que reflejan la tradición. Perfecto para eventos casuales con un toque distintivo.", 2, 4),
("Vestido bordado juvenil", "https://drive.google.com/file/d/1bBp4Ryt-W30gFzGSDL_UxEMPNdg7n7S4/view?usp=sharing", 858, 5, 'G', "Puebla", "Este vestido juvenil destaca por su diseño fresco y moderno, combinado con bordados que reflejan la tradición. Perfecto para eventos casuales con un toque distintivo.", 2, 4),
("Camisa bordada infantil", "https://drive.google.com/file/d/1f7NONJvVYlw-TeIvBM1UqSC_k9o9P43v/view?usp=sharing", 680, 5, 'CH', "Puebla", "Una camisa infantil adornada con bordados alegres y coloridos. Ideal para vestir a los más pequeños con estilo y resaltar la riqueza de la artesanía mexicana desde temprana edad.", 2, 4),
("Camisa bordada infantil", "https://drive.google.com/file/d/1f7NONJvVYlw-TeIvBM1UqSC_k9o9P43v/view?usp=sharing", 680, 5, 'M', "Puebla", "Una camisa infantil adornada con bordados alegres y coloridos. Ideal para vestir a los más pequeños con estilo y resaltar la riqueza de la artesanía mexicana desde temprana edad.", 2, 4),
("Camisa bordada infantil", "https://drive.google.com/file/d/1f7NONJvVYlw-TeIvBM1UqSC_k9o9P43v/view?usp=sharing", 680, 5, 'G', "Puebla", "Una camisa infantil adornada con bordados alegres y coloridos. Ideal para vestir a los más pequeños con estilo y resaltar la riqueza de la artesanía mexicana desde temprana edad.", 2, 4),
("Huipil infantil", "https://drive.google.com/file/d/1_I2C1UyMX9-hRkcMBMjtH-MMYP0T42tw/view?usp=sharing", 650, 5, 'CH', "Puebla", "El huipil infantil refleja la dulzura y la autenticidad de la artesanía mexicana. Un atuendo especial para los más pequeños, lleno de detalles que capturan la esencia de la cultura.", 2, 4),
("Huipil infantil", "https://drive.google.com/file/d/1_I2C1UyMX9-hRkcMBMjtH-MMYP0T42tw/view?usp=sharing", 650, 5, 'M', "Puebla", "El huipil infantil refleja la dulzura y la autenticidad de la artesanía mexicana. Un atuendo especial para los más pequeños, lleno de detalles que capturan la esencia de la cultura.", 2, 4),
("Huipil infantil", "https://drive.google.com/file/d/1_I2C1UyMX9-hRkcMBMjtH-MMYP0T42tw/view?usp=sharing", 650, 5, 'G', "Puebla", "El huipil infantil refleja la dulzura y la autenticidad de la artesanía mexicana. Un atuendo especial para los más pequeños, lleno de detalles que capturan la esencia de la cultura.", 2, 4),
("Camisa infantil bordada con botones", "https://drive.google.com/file/d/15yg3ePEYayDIma9UhTEYX13xbuJ6ju2k/view?usp=sharing", 650, 5, 'CH', "", "Una encantadora camisa infantil con bordados y botones que añaden un toque juguetón. Perfecta para ocasiones especiales y para que los niños lleven consigo la herencia cultural desde temprana edad.", 2, 4),
("Camisa infantil bordada con botones", "https://drive.google.com/file/d/15yg3ePEYayDIma9UhTEYX13xbuJ6ju2k/view?usp=sharing", 650, 5, 'M', "", "Una encantadora camisa infantil con bordados y botones que añaden un toque juguetón. Perfecta para ocasiones especiales y para que los niños lleven consigo la herencia cultural desde temprana edad.", 2, 4),
("Camisa infantil bordada con botones", "https://drive.google.com/file/d/15yg3ePEYayDIma9UhTEYX13xbuJ6ju2k/view?usp=sharing", 650, 5, 'G', "", "Una encantadora camisa infantil con bordados y botones que añaden un toque juguetón. Perfecta para ocasiones especiales y para que los niños lleven consigo la herencia cultural desde temprana edad.", 2, 4),
("Camisa bordada", "https://drive.google.com/file/d/1GEXne2Jx2k5Ffi88llcpetHLHwlLHFDj/view?usp=sharing", 765, 5, 'CH', "Puebla", "Una camisa para hombre con detalles bordados que le otorgan un toque único y sofisticado. Perfecta para aquellos que desean incorporar la artesanía mexicana en su vestimenta diaria.", 2, 4),
("Camisa bordada", "https://drive.google.com/file/d/1GEXne2Jx2k5Ffi88llcpetHLHwlLHFDj/view?usp=sharing", 765, 5, 'M', "Puebla", "Una camisa para hombre con detalles bordados que le otorgan un toque único y sofisticado. Perfecta para aquellos que desean incorporar la artesanía mexicana en su vestimenta diaria.", 2, 4),
("Camisa bordada", "https://drive.google.com/file/d/1GEXne2Jx2k5Ffi88llcpetHLHwlLHFDj/view?usp=sharing", 765, 5, 'G', "Puebla", "Una camisa para hombre con detalles bordados que le otorgan un toque único y sofisticado. Perfecta para aquellos que desean incorporar la artesanía mexicana en su vestimenta diaria.", 2, 4),
("Camisa bordada", "https://drive.google.com/file/d/1lu74TtoIvLbmJWJvGcriEXw0S4-_Sm7s/view?usp=sharing", 765, 5, 'CH', "Puebla", "Otra opción de camisa para hombre, destacando por sus bordados cuidadosamente elaborados. Un equilibrio entre lo moderno y lo tradicional.", 2, 4),
("Camisa bordada", "https://drive.google.com/file/d/1lu74TtoIvLbmJWJvGcriEXw0S4-_Sm7s/view?usp=sharing", 765, 5, 'M', "Puebla", "Otra opción de camisa para hombre, destacando por sus bordados cuidadosamente elaborados. Un equilibrio entre lo moderno y lo tradicional.", 2, 4),
("Camisa bordada", "https://drive.google.com/file/d/1lu74TtoIvLbmJWJvGcriEXw0S4-_Sm7s/view?usp=sharing", 765, 5, 'G', "Puebla", "Otra opción de camisa para hombre, destacando por sus bordados cuidadosamente elaborados. Un equilibrio entre lo moderno y lo tradicional.", 2, 4),
("Camisa bordada", "https://drive.google.com/file/d/1QYtitW8cUqZoZxIFB8e4cmdtK8Xt3J2c/view?usp=sharing", 765, 5, 'CH', "Puebla", "Una camisa que fusiona la elegancia con la tradición, gracias a sus bordados detallados. Una elección distinguida para quienes aprecian la artesanía mexicana en su vestimenta.", 2, 4),
("Camisa bordada", "https://drive.google.com/file/d/1QYtitW8cUqZoZxIFB8e4cmdtK8Xt3J2c/view?usp=sharing", 765, 5, 'M', "Puebla", "Una camisa que fusiona la elegancia con la tradición, gracias a sus bordados detallados. Una elección distinguida para quienes aprecian la artesanía mexicana en su vestimenta.", 2, 4),
("Camisa bordada", "https://drive.google.com/file/d/1QYtitW8cUqZoZxIFB8e4cmdtK8Xt3J2c/view?usp=sharing", 765, 5, 'G', "Puebla", "Una camisa que fusiona la elegancia con la tradición, gracias a sus bordados detallados. Una elección distinguida para quienes aprecian la artesanía mexicana en su vestimenta.", 2, 4),
("Camisa bordada", "https://drive.google.com/file/d/17g5QfpUl7iu3HmaxBCbajmB1nNVk_Zc3/view?usp=sharing", 800, 5, 'CH', "Puebla", "Camisa manga larga de caballero con bordados preciosos mexicanos", 2, 4),
("Camisa bordada", "https://drive.google.com/file/d/17g5QfpUl7iu3HmaxBCbajmB1nNVk_Zc3/view?usp=sharing", 800, 5, 'M', "Puebla", "Camisa manga larga de caballero con bordados preciosos mexicanos", 2, 4),
("Camisa bordada", "https://drive.google.com/file/d/17g5QfpUl7iu3HmaxBCbajmB1nNVk_Zc3/view?usp=sharing", 800, 5, 'G', "Puebla", "Camisa manga larga de caballero con bordados preciosos mexicanos", 2, 4),
("Sarape", "https://drive.google.com/file/d/15MppIXnpOchGlxCDZ_7fjIgLajoA9IED/view?usp=sharing", 1200, 5, 'Unitalla', "Tlaxcala", "Prenda colorida y artesanal que fusiona patrones vibrantes con una rica tradición cultural, ideal para mantenerse abrigado con estilo.", 2, 4),
("Sarape", "https://drive.google.com/file/d/1hPzdXXn98JcnHi7k5kOBiZFSKsm57MbJ/view?usp=sharing", 1200, 15, 'Unitalla',  "Tlaxcala", "Prenda colorida y artesanal que fusiona patrones vibrantes con una rica tradición cultural, destacando por su estética única y comodidad", 2, 7),
("Sarape largo", "https://drive.google.com/file/d/1EU0Fua69SQV6FG8XCVhTI5BcPaWM-5po/view?usp=sharing", 1200, 16, 'Unitalla', "Tlaxcala", "Prenda colorida y artesanal que fusiona patrones vibrantes con una rica tradición cultural, destacando por su estética única y comodidad", 2, 7),
("Sarape corto", "https://drive.google.com/file/d/1QELFufPeEiZ3TG2EZKwteUgGSjbovt-o/view?usp=sharing", 1200, 17, 'Unitalla', "Tlaxcala", "Prenda colorida y artesanal que fusiona patrones vibrantes con una rica tradición cultural, destacando por su estética única y comodidad", 2, 7),
("Blusa Bordada", "https://drive.google.com/file/d/1FJzDwGaatNfg5t3pIAXhjP5Lpkk8SKaz/view?usp=sharing", 1300, 18, 'CH', "Oaxaca", "Exquisita blusa artesanal oaxaqueña bordada a mano reflejando la tradición y destreza cultural de la región con sus detalles vibrantes y cómodos.", 2, 11),
("Blusa Bordada", "https://drive.google.com/file/d/1FJzDwGaatNfg5t3pIAXhjP5Lpkk8SKaz/view?usp=sharing", 1300, 18, 'M', "Oaxaca", "Exquisita blusa artesanal oaxaqueña bordada a mano reflejando la tradición y destreza cultural de la región con sus detalles vibrantes y cómodos.", 2, 11),
("Blusa Bordada", "https://drive.google.com/file/d/1FJzDwGaatNfg5t3pIAXhjP5Lpkk8SKaz/view?usp=sharing", 1300, 18, 'G', "Oaxaca", "Exquisita blusa artesanal oaxaqueña bordada a mano reflejando la tradición y destreza cultural de la región con sus detalles vibrantes y cómodos.", 2, 11),
("Blusa bordada", "https://drive.google.com/file/d/1sTxwIBX-GAE96QU_e8gOjxz27dqypMFO/view?usp=sharing", 1100, 19, 'CH', "Oaxaca", "Elegante huipil oaxaqueño con un diseño floral cautivador, creado con esmero que celebra la artesanía y la herencia cultural de Oaxaca.", 2, 11),
("Blusa bordada", "https://drive.google.com/file/d/1sTxwIBX-GAE96QU_e8gOjxz27dqypMFO/view?usp=sharing", 1100, 19, 'M', "Oaxaca", "Elegante huipil oaxaqueño con un diseño floral cautivador, creado con esmero que celebra la artesanía y la herencia cultural de Oaxaca.", 2, 11),
("Blusa bordada", "https://drive.google.com/file/d/1sTxwIBX-GAE96QU_e8gOjxz27dqypMFO/view?usp=sharing", 1100, 19, 'G', "Oaxaca", "Elegante huipil oaxaqueño con un diseño floral cautivador, creado con esmero que celebra la artesanía y la herencia cultural de Oaxaca.", 2, 11),
("Blusa oaxaqueña", "https://drive.google.com/file/d/10E7oq2-ddj0j2YaJIk9p3BPck3yghzFb/view?usp=sharing", 1500, 20, 'CH', "Oaxaca", "Espléndido vestido tradicional oaxaqueño, confeccionado a mano fusionando elegancia y tradición en cada puntada para resaltar la belleza y autenticidad de la ropa artesanal mexicana.", 2, 11),
("Blusa oaxaqueña", "https://drive.google.com/file/d/10E7oq2-ddj0j2YaJIk9p3BPck3yghzFb/view?usp=sharing", 1500, 20, 'M', "Oaxaca", "Espléndido vestido tradicional oaxaqueño, confeccionado a mano fusionando elegancia y tradición en cada puntada para resaltar la belleza y autenticidad de la ropa artesanal mexicana.", 2, 11),
("Blusa oaxaqueña", "https://drive.google.com/file/d/10E7oq2-ddj0j2YaJIk9p3BPck3yghzFb/view?usp=sharing", 1500, 20, 'G', "Oaxaca", "Espléndido vestido tradicional oaxaqueño, confeccionado a mano fusionando elegancia y tradición en cada puntada para resaltar la belleza y autenticidad de la ropa artesanal mexicana.", 2, 11),
("Blusa Bordada", "https://drive.google.com/file/d/1t3WFTmE3ptDUKmIt-UuOEp1m4RR-j9-J/view?usp=sharing", 1300, 21, 'CH', "Oaxaca", "Exquisita blusa artesanal oaxaqueña bordada a mano  reflejando la tradición y destreza cultural de la región con sus detalles vibrantes y cómodos.", 2, 11),
("Blusa Bordada", "https://drive.google.com/file/d/1t3WFTmE3ptDUKmIt-UuOEp1m4RR-j9-J/view?usp=sharing", 1300, 21, 'M', "Oaxaca", "Exquisita blusa artesanal oaxaqueña bordada a mano  reflejando la tradición y destreza cultural de la región con sus detalles vibrantes y cómodos.", 2, 11),
("Blusa Bordada", "https://drive.google.com/file/d/1t3WFTmE3ptDUKmIt-UuOEp1m4RR-j9-J/view?usp=sharing", 1300, 21, 'G', "Oaxaca", "Exquisita blusa artesanal oaxaqueña bordada a mano  reflejando la tradición y destreza cultural de la región con sus detalles vibrantes y cómodos.", 2, 11);

    
SELECT * FROM `order`;
SELECT * FROM `user`;
SELECT * FROM `address`;
SELECT * FROM `product`;
SELECT * FROM `comment`;
SELECT * FROM `handicraftsman`;
SELECT * FROM `paymentmethods`;
SELECT * FROM `category`;