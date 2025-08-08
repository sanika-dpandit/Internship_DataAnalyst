-- 1. Drop and create database
DROP DATABASE IF EXISTS ecommerce_demo;
CREATE DATABASE ecommerce_demo;
USE ecommerce_demo;

-- 2. Create tables
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- 3. Insert sample data

-- Customers
INSERT INTO customers VALUES
(1, 'Person One', 'abc1@example.com', 'Dubai'),
(2, 'Person Two', 'abc2@example.com', 'Abu Dhabi'),
(3, 'Person Three', 'abc3@example.com', 'Sharjah');

-- Products
INSERT INTO products VALUES
(101, 'Laptop', 2500.00),
(102, 'Smartphone', 1500.00),
(103, 'Headphones', 300.00);

-- Orders
INSERT INTO orders VALUES
(201, 1, 101, 1, '2025-08-01'),
(202, 2, 102, 2, '2025-08-02'),
(203, 1, 103, 3, '2025-08-03'),
(204, 3, 102, 1, '2025-08-04');
