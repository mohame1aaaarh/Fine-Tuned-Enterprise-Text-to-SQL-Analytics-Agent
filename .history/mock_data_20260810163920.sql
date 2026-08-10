-- ============================================================
-- Seed / Mock Data for Testing Text-to-SQL Queries
-- ============================================================

-- Insert Customers
INSERT INTO customers (first_name, last_name, email, city, country) VALUES
('Ahmed', 'Ali', 'ahmed.ali@example.com', 'Cairo', 'Egypt'),
('Sara', 'Mohamed', 'sara.m@example.com', 'Alexandria', 'Egypt'),
('John', 'Doe', 'john.doe@example.com', 'New York', 'USA'),
('Fatima', 'Hassan', 'fatima.h@example.com', 'Giza', 'Egypt'),
('Omar', 'Khaled', 'omar.k@example.com', 'Riyadh', 'Saudi Arabia');

-- Insert Products
INSERT INTO products (product_name, category, price, stock_quantity) VALUES
('Wireless Laptop Mouse', 'Electronics', 25.50, 100),
('Mechanical Gaming Keyboard', 'Electronics', 85.00, 50),
('Noise Cancelling Headphones', 'Electronics', 150.00, 30),
('Cotton T-Shirt', 'Apparel', 19.99, 200),
('Running Shoes', 'Apparel', 75.00, 80),
('Coffee Maker', 'Home & Kitchen', 45.00, 40);

-- Insert Orders
INSERT INTO orders (customer_id, order_date, status, total_amount) VALUES
(1, '2026-07-01 10:30:00', 'Completed', 110.50),
(2, '2026-07-03 14:15:00', 'Completed', 150.00),
(3, '2026-07-05 09:00:00', 'Pending', 19.99),
(1, '2026-07-10 16:45:00', 'Completed', 85.00),
(4, '2026-07-12 11:20:00', 'Shipped', 120.00);

-- Insert Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 25.50),
(1, 2, 1, 85.00),
(2, 3, 1, 150.00),
(3, 4, 1, 19.99),
(4, 2, 1, 85.00),
(5, 5, 1, 75.00),
(5, 6, 1, 45.00);