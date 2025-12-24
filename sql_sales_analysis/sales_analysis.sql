--
-- File generated with SQLiteStudio v3.4.18 on Wed Dec 24 22:37:32 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: customers
CREATE TABLE IF NOT EXISTS customers (customer_id INTEGER PRIMARY KEY, customer_name TEXT, country TEXT);
INSERT INTO customers (customer_id, customer_name, country) VALUES (1, 'Ahmed Ali', 'Saudi Arabia');
INSERT INTO customers (customer_id, customer_name, country) VALUES (2, 'Sara Khalid', 'Saudi Arabia');
INSERT INTO customers (customer_id, customer_name, country) VALUES (3, 'John Smith', 'UAE');
INSERT INTO customers (customer_id, customer_name, country) VALUES (4, 'Mona Hassan', 'Egypt');

-- Table: order_items
CREATE TABLE IF NOT EXISTS order_items (order_item_id INTEGER PRIMARY KEY, order_id INTEGER REFERENCES orders (order_id) ON DELETE NO ACTION ON UPDATE NO ACTION MATCH SIMPLE, product TEXT, quantity INTEGER, price REAL);
INSERT INTO order_items (order_item_id, order_id, product, quantity, price) VALUES (1, 101, 'Laptop', 1, 1200.0);
INSERT INTO order_items (order_item_id, order_id, product, quantity, price) VALUES (2, 102, 'Tablet', 2, 400.0);
INSERT INTO order_items (order_item_id, order_id, product, quantity, price) VALUES (3, 103, 'Phone', 3, 500.0);
INSERT INTO order_items (order_item_id, order_id, product, quantity, price) VALUES (4, 104, 'Headphones', 2, 300.0);
INSERT INTO order_items (order_item_id, order_id, product, quantity, price) VALUES (5, 105, 'Monitor', 1, 900.0);

-- Table: orders
CREATE TABLE IF NOT EXISTS orders (order_id INTEGER PRIMARY KEY, customer_id INTEGER REFERENCES customers (customer_id) ON DELETE NO ACTION ON UPDATE NO ACTION MATCH SIMPLE, order_date TEXT, total_amount REAL);
INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES (101, 1, '2024-01-10', 1200.0);
INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES (102, 1, '2024-02-15', 800.0);
INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES (103, 2, '2024-02-20', 1500.0);
INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES (104, 3, '2024-03-05', 600.0);
INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES (105, 4, '2024-03-18', 900.0);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
