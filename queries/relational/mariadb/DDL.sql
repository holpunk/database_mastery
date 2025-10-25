-- users table
CREATE TABLE users (
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       name VARCHAR(100),
                       email VARCHAR(100) UNIQUE
);

-- addresses table
CREATE TABLE addresses (
                           id INT PRIMARY KEY AUTO_INCREMENT,
                           user_id INT,
                           address_line VARCHAR(255),
                           city VARCHAR(100),
                           country VARCHAR(100),
                           FOREIGN KEY (user_id) REFERENCES users(id)
);

-- products table
CREATE TABLE products (
                          id INT PRIMARY KEY AUTO_INCREMENT,
                          name VARCHAR(100),
                          price DECIMAL(10,2)
);

-- orders table
CREATE TABLE orders (
                        id INT PRIMARY KEY AUTO_INCREMENT,
                        user_id INT,
                        order_date DATETIME,
                        shipping_address_id INT,
                        FOREIGN KEY (user_id) REFERENCES users(id),
                        FOREIGN KEY (shipping_address_id) REFERENCES addresses(id)
);

-- order_items table
CREATE TABLE order_items (
                             id INT PRIMARY KEY AUTO_INCREMENT,
                             order_id INT,
                             product_id INT,
                             quantity INT,
                             FOREIGN KEY (order_id) REFERENCES orders(id),
                             FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Example join: Get all orders with user, address, and product details
SELECT
    u.name AS user_name,
    o.id AS order_id,
    o.order_date,
    a.address_line,
    p.name AS product_name,
    oi.quantity
FROM orders o
         JOIN users u ON o.user_id = u.id
         JOIN addresses a ON o.shipping_address_id = a.id
         JOIN order_items oi ON oi.order_id = o.id
         JOIN products p ON oi.product_id = p.id;
