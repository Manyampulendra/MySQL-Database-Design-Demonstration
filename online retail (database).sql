-- Create the database
CREATE DATABASE IF NOT EXISTS online_retail;
USE online_retail;

-- Create categories table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

-- Insert sample categories
INSERT INTO categories VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home Appliances'),
(5, 'Sports & Outdoors'),
(6, 'Beauty & Personal Care'),
(7, 'Groceries');

-- Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10, 2),
    stock_quantity INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Insert sample products
INSERT INTO products VALUES
(101, 'Smartphone', 1, 19999.99, 50),
(102, 'Bluetooth Headphones', 1, 2999.00, 100),
(103, 'Mens T-Shirt', 2, 499.00, 200),
(104, 'Python Programming Book', 3, 799.00, 75),
(105, 'Microwave Oven', 4, 8999.00, 25),
(106, 'Running Shoes', 5, 3500.00, 80),
(107, 'Yoga Mat', 5, 1200.00, 150),
(108, 'Lipstick', 6, 850.00, 300),
(109, 'Shampoo', 6, 450.00, 250),
(110, 'Coffee Beans', 7, 600.00, 120),
(111, 'Smart TV', 1, 45000.00, 30),
(112, 'Designer Dress', 2, 8500.00, 40),
(113, 'Cookbook', 3, 650.00, 90),
(114, 'Air Fryer', 4, 6000.00, 60);

-- Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    gender ENUM('Male', 'Female', 'Other'),
    signup_date DATE
);

-- Insert sample customers
INSERT INTO customers VALUES
(1, 'Avik Sarkhel', 'avik@email.com', 'Male', '2024-08-01'),
(2, 'Riya Sen', 'riya@email.com', 'Female', '2024-08-05'),
(3, 'Aman Gupta', 'aman@email.com', 'Male', '2024-08-10'),
(4, 'Priya Sharma', 'priya@email.com', 'Female', '2024-08-12'),
(5, 'Rahul Singh', 'rahul@email.com', 'Male', '2024-08-18'),
(6, 'Sneha Kumari', 'sneha@email.com', 'Female', '2024-08-22'),
(7, 'Vikram Das', 'vikram@email.com', 'Male', '2024-08-25');

-- Create orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled'),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert sample orders
INSERT INTO orders VALUES
(1001, 1, '2024-08-15', 'Delivered'),
(1002, 2, '2024-08-17', 'Shipped'),
(1003, 3, '2024-08-20', 'Pending'),
(1004, 4, '2024-08-21', 'Delivered'),
(1005, 5, '2024-08-23', 'Shipped'),
(1006, 1, '2024-08-24', 'Pending'),
(1007, 6, '2024-08-25', 'Delivered'),
(1008, 7, '2024-08-26', 'Shipped');

-- Create order_items table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert sample order items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1001, 101, 1),
(1001, 103, 2),
(1002, 104, 1),
(1003, 102, 1),
(1003, 105, 1),
(1004, 106, 1),
(1004, 108, 1),
(1005, 110, 3),
(1006, 101, 1),
(1006, 102, 1),
(1007, 111, 1),
(1007, 109, 2),
(1008, 112, 1),
(1008, 113, 1);

-- Create payments table
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    payment_method ENUM('Credit Card', 'UPI', 'Cash on Delivery'),
    amount DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Insert sample payments
INSERT INTO payments VALUES
(201, 1001, '2024-08-15', 'Credit Card', 20997.99),
(202, 1002, '2024-08-17', 'UPI', 799.00),
(203, 1004, '2024-08-21', 'Cash on Delivery', 4350.00),
(204, 1005, '2024-08-23', 'Credit Card', 1800.00),
(205, 1007, '2024-08-25', 'UPI', 45900.00),
(206, 1008, '2024-08-26', 'Credit Card', 9150.00);

-- Create shipping table
CREATE TABLE shipping (
    shipping_id INT PRIMARY KEY,
    order_id INT,
    shipping_address VARCHAR(255),
    delivery_date DATE,
    delivery_status ENUM('In Transit', 'Delivered', 'Returned'),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Insert sample shipping data
INSERT INTO shipping VALUES
(301, 1001, '123 Park Street, Kolkata', '2024-08-16', 'Delivered'),
(302, 1002, '88 MG Road, Delhi', NULL, 'In Transit'),
(303, 1003, '9 Sector 5, Bangalore', NULL, 'In Transit'),
(304, 1004, '456 MG Road, Chennai', '2024-08-22', 'Delivered'),
(305, 1005, '789 Link Road, Mumbai', NULL, 'In Transit'),
(306, 1006, '10 Sector 18, Gurgaon', NULL, 'In Transit'),
(307, 1007, '22 Lake Street, Pune', '2024-08-26', 'Delivered'),
(308, 1008, '33 Old Airport Road, Hyderabad', NULL, 'In Transit')