-- ========================================================
-- Day 3: Aggregations, GROUP BY & HAVING
-- Topics: COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING
-- ========================================================

CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

CREATE TABLE IF NOT EXISTS sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(30) NOT NULL,
    sale_amount DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    region VARCHAR(20) NOT NULL
);

INSERT INTO sales (product_name, category, sale_amount, quantity, region) VALUES
('Laptop', 'Electronics', 55000.00, 2, 'North'),
('Mouse', 'Accessories', 500.00, 10, 'North'),
('Keyboard', 'Accessories', 1500.00, 5, 'South'),
('Phone', 'Electronics', 30000.00, 4, 'North'),
('Monitor', 'Electronics', 12000.00, 3, 'South'),
('Headphones', 'Accessories', 2000.00, 8, 'North'),
('Chair', 'Furniture', 7000.00, 2, 'South'),
('Desk', 'Furniture', 11000.00, 1, 'North');

-- 1. Aggregate Functions Overview
SELECT 
    COUNT(*) AS total_sales_records,
    SUM(sale_amount) AS total_revenue,
    AVG(sale_amount) AS avg_sale_value,
    MIN(sale_amount) AS min_sale,
    MAX(sale_amount) AS max_sale
FROM sales;

-- 2. Category Grouping
SELECT 
    category,
    COUNT(*) AS total_items,
    SUM(sale_amount) AS category_revenue,
    AVG(sale_amount) AS category_avg_price
FROM sales
GROUP BY category;

-- 3. Filtering Groups with HAVING
SELECT 
    category,
    SUM(sale_amount) AS north_revenue,
    COUNT(*) AS items_count
FROM sales
WHERE region = 'North'
GROUP BY category
HAVING SUM(sale_amount) > 5000.00
ORDER BY north_revenue DESC;

-- 4. Region Breakdown
SELECT 
    region,
    COUNT(*) AS total_sales_count,
    SUM(sale_amount) AS total_region_sales
FROM sales
GROUP BY region;

-- 5. High-Revenue Filter (> 40000)
SELECT 
    region,
    SUM(sale_amount) AS total_revenue
FROM sales
GROUP BY region
HAVING SUM(sale_amount) > 40000.00
ORDER BY total_revenue DESC;t
