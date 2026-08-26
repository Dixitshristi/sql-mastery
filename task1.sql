-- ========================================================
-- Day 2: Complete Practice Script
-- Topics: SELECT, DISTINCT, WHERE, ORDER BY, LIMIT
-- ========================================================

-- 1. Database Creation & Selection
CREATE DATABASE IF NOT EXISTS bookstore_db;
USE bookstore_db;

-- 2. Create Table
CREATE TABLE IF NOT EXISTS books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50),
    genre VARCHAR(30),
    price DECIMAL(8, 2),
    stock_qty INT,
    rating DECIMAL(2, 1)
);

-- 3. Insert Records
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
-- Homework Solutions
-- ========================================================

-- Task 1: Fetch unique authors (DISTINCT)
SELECT DISTINCT author 
FROM books;

-- Task 2: Filter by rating and genre (WHERE)
SELECT title, author, genre, rating 
FROM books
WHERE rating > 4.6 
  AND genre = 'Self-Help';

-- Task 3: Sort all books by price from lowest to highest (ORDER BY ASC)
SELECT title, price 
FROM books
ORDER BY price ASC;

-- Task 4: Get the single cheapest finance book (WHERE + ORDER BY + LIMIT 1)
SELECT title, author, genre, price 
FROM books
WHERE genre = 'Finance'
ORDER BY price ASC
LIMIT 1;
