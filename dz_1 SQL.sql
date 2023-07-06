CREATE DATABASE IF NOT EXISTS mobile_phone;

USE dz_1;

-- Создайте таблицу с мобильными телефонами
CREATE TABLE IF NOT EXISTS mobile_phone
(
id INT PRIMARY KEY AUTO_INCREMENT,
models_mobile_phones VARCHAR(45),
manufacturers_mobile_phones VARCHAR(45),
prices_mobile_phones decimal(10,0),
quantity_mobile_phones varchar(40)
);

-- Заполните БД данными 
INSERT mobile_phone(models_mobile_phones,manufacturers_mobile_phones,prices_mobile_phones)
VALUES 
('Huawei MATE50 Pro', 'Huawei', 65000,7),
('iPhone 14 Pro Max 512 GB', 'Apple', 180000,1),
('S23 8/512 GB', 'Samsung', 80000,12);
SELECT * FROM mobile_phone; 

-- Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT models_mobile_phones, manufacturers_mobile_phones, prices_mobile_phones 
FROM mobile_phone
WHERE quantity_mobile_phones > 2;