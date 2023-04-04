CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `rating` decimal(5,2) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


INSERT INTO products(product, price, rating, category, brand)
VALUES('iPhone 9', 549, 4.69, 'smartphones', 'Apple'),
 ('iPhone X', 899, 4.44, 'CATEGORY smartphones', 'Apple'),
 ('Samsung Universe 9', 1249, 4.09, 'smartphones', 'Samsung'),
 ('OPPO F 19', 280, 4.3, 'smartphones', 'OPPO'),
 ('Huawei P30', 499, 4.09, 'smartphones', 'Huawei'),
 ('MacBook Pro', 1149, 4.57, 'laptops', 'Apple'),
 ('Samsung Galsxy Book', 1499, 4.25, 'laptops', 'Samsung'),
 ('Microsoft Surface Laptop 4', 1499, 4.43, 'laptops', 'Microsoft Surface'),
 ('Infinix INBOOK', 1099, 4.54, 'laptops', 'Infinix'),
 ('HP Pavilion 15-DK1056WM', 1099, 4.43, 'laptops', 'HP Pavilion');

--  1
SELECT PRODUCT, Price FROM products WHERE brand = 'Apple';
-- 2
SELECT PRODUCT FROM products WHERE Price < 1000;
-- 3
SELECT PRODUCT FROM products WHERE Price BETWEEN 500 AND 1500  or Price > 500 AND Price < 1500;
-- 4
SELECT PRODUCT, category FROM products WHERE brand IN ('Apple', 'Samsung', 'Huawei');
-- 5
SELECT PRODUCT, category FROM products WHERE PRODUCT LIKE '%Samsung%';