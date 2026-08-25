-- ========================================================
-- Day 2: Data Filtering, Sorting & Execution Order
-- Topics: SELECT, DISTINCT, WHERE, ORDER BY, LIMIT
-- ========================================================

-- 1. Database Setup
CREATE DATABASE IF NOT EXISTS bookstore_db;
USE bookstore_db;

-- 2. Schema Creation
CREATE TABLE IF NOT EXISTS books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50),
    genre VARCHAR(30),
    price DECIMAL(8, 2),
    stock_qty INT,
    rating DECIMAL(2, 1)
);

-- 3. Data Insertion
INSERT INTO books (title, author, genre, price, stock_qty, rating) VALUES
('The Alchemist', 'Paulo Coelho', 'Fiction', 350.00, 15, 4.7),
('Atomic Habits', 'James Clear', 'Self-Help', 520.00, 8, 4.8),
('Clean Code', 'Robert C. Martin', 'Tech', 1250.00, 3, 4.6),
('Deep Work', 'Cal Newport', 'Self-Help', 450.00, NULL, 4.5),
('SQL Performance Explained', 'Markus Winand', 'Tech', 1800.00, 2, 4.9),
('The Psychology of Money', 'Morgan Housel', 'Finance', 399.00, 12, 4.7),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 299.00, 0, 4.4),
('Designing Data-Intensive Applications', 'Martin Kleppmann', 'Tech', 2200.00, 5, 5.0);

-- ========================================================
-- Practice Queries
-- ========================================================

-- 1. SELECT & DISTINCT: Retrieve unique genres
SELECT DISTINCT genre 
FROM books;

-- 2. WHERE Filtering: Comparison & Logical conditions
SELECT title, author, price 
FROM books
WHERE genre = 'Tech' 
  AND rating >= 4.8;

-- 3. Range & Membership Filtering (BETWEEN & IN)
SELECT title, genre, price 
FROM books
WHERE genre IN ('Tech', 'Finance')
  AND price BETWEEN 400.00 AND 2000.00;

-- 4. Pattern Matching (LIKE with Wildcards)
-- Match authors whose name contains 'Martin'
SELECT title, author, rating 
FROM books
WHERE author LIKE '%Martin%' 
  AND rating > 4.5;

-- 5. Handling NULLs & Zero Stock
SELECT title, price, stock_qty 
FROM books
WHERE stock_qty IS NULL 
   OR stock_qty = 0;

-- 6. ORDER BY & LIMIT: Top 2 most expensive books
SELECT title, price 
FROM books
ORDER BY price DESC
LIMIT 2;

-- 7. Combined Execution: Sorting with Pagination
-- Top 3 highest rated in-stock books, tie-broken by price
SELECT title, author, price, rating
FROM books
WHERE stock_qty > 0
ORDER BY rating DESC, price DESC
LIMIT 3;
