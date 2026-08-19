-- ========================================================
-- Day 2: Data Filtering, Retrieval & Execution Order
-- ========================================================

-- 1. Setup Table & Sample Records
CREATE TABLE IF NOT EXISTS inventory (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(50) NOT NULL,
    category VARCHAR(30),
    price DECIMAL(10, 2),
    stock_qty INT
);

INSERT INTO inventory (item_name, category, price, stock_qty) VALUES
('Wireless Mouse', 'Accessories', 799.00, 25),
('Mechanical Keyboard', 'Accessories', 2499.00, 4),
('Gaming Monitor', 'Electronics', 14500.00, 8),
('Smart TV', 'Electronics', 35000.00, 2),
('USB-C Cable', 'Accessories', 299.00, 50),
('Desk Mat', 'Decor', 400.00, 10),
('Bluetooth Speaker', 'Audio', 1899.00, NULL);

-- 2. Deduplication using DISTINCT
SELECT DISTINCT category 
FROM inventory;

-- 3. Comparison & Range Filtering (BETWEEN & IN)
SELECT item_name, category, price 
FROM inventory
WHERE price BETWEEN 500 AND 15000
  AND category IN ('Electronics', 'Accessories');

-- 4. Pattern Matching with Wildcards (LIKE)
-- Starts with 'W'
SELECT * FROM inventory WHERE item_name LIKE 'W%';

-- Contains 'board' anywhere
SELECT * FROM inventory WHERE item_name LIKE '%board%';

-- Exactly 4 characters in category starting with 'A'
SELECT * FROM inventory WHERE category LIKE 'A___';

-- 5. Handling NULL Values (Three-Valued Logic)
-- Missing stock
SELECT item_name, price FROM inventory WHERE stock_qty IS NULL;

-- In-stock items
SELECT item_name, price, stock_qty FROM inventory WHERE stock_qty IS NOT NULL;

-- 6. Sorting & Pagination (ORDER BY + LIMIT / OFFSET)
-- Top 3 most expensive items in stock
SELECT item_name, category, price, stock_qty
FROM inventory
WHERE stock_qty > 0
ORDER BY price DESC
LIMIT 3;

-- Pagination: Page 2 (Items 3 to 5)
SELECT * FROM inventory
ORDER BY item_id ASC
LIMIT 3 OFFSET 2;
