-- ============================================
-- Day 1: Relational Schema, Constraints & DDL
-- ============================================

-- 1. Database Creation
CREATE DATABASE IF NOT EXISTS mini_task1;
USE mini_task1;

-- 2. Create Table with Constraints (PK, NOT NULL, CHECK, DEFAULT)
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) CHECK (price > 0),
    stock INT DEFAULT 0
);

-- 3. DDL Alter Operations (Add & Drop Column)
ALTER TABLE products 
ADD category VARCHAR(50);

ALTER TABLE products 
DROP COLUMN category;

-- 4. Valid Data Insertion
INSERT INTO products (product_name, price, stock) 
VALUES 
    ('Mouse', 499.00, 25),
    ('Mechanical Keyboard', 2499.50, 10),
    ('USB-C Hub', 1299.00, 15);

-- 5. Negative Testing (Yeh error throw karega kyunki price <= 0 hai)
-- INSERT INTO products (product_name, price, stock) VALUES ('Broken Item', -50.00, 2);

-- 6. Verify Final Data
SELECT * FROM products;
