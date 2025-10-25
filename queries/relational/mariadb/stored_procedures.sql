-- users: Insert a new user
DELIMITER //
CREATE PROCEDURE insert_user(IN p_name VARCHAR(100), IN p_email VARCHAR(100))
BEGIN
INSERT INTO users (name, email) VALUES (p_name, p_email);
SELECT LAST_INSERT_ID() AS user_id;
END //
DELIMITER ;

-- addresses: Insert a new address for a user
DELIMITER //
CREATE PROCEDURE insert_address(
    IN p_user_id INT,
    IN p_address_line VARCHAR(255),
    IN p_city VARCHAR(100),
    IN p_country VARCHAR(100)
)
BEGIN
INSERT INTO addresses (user_id, address_line, city, country)
VALUES (p_user_id, p_address_line, p_city, p_country);
SELECT LAST_INSERT_ID() AS address_id;
END //
DELIMITER ;

-- products: Insert a new product
DELIMITER //
CREATE PROCEDURE insert_product(IN p_name VARCHAR(100), IN p_price DECIMAL(10,2))
BEGIN
INSERT INTO products (name, price) VALUES (p_name, p_price);
SELECT LAST_INSERT_ID() AS product_id;
END //
DELIMITER ;

-- orders: Insert a new order
DELIMITER //
CREATE PROCEDURE insert_order(
    IN p_user_id INT,
    IN p_order_date DATETIME,
    IN p_shipping_address_id INT
)
BEGIN
INSERT INTO orders (user_id, order_date, shipping_address_id)
VALUES (p_user_id, p_order_date, p_shipping_address_id);
SELECT LAST_INSERT_ID() AS order_id;
END //
DELIMITER ;

-- order_items: Insert a new order item
DELIMITER //
CREATE PROCEDURE insert_order_item(
    IN p_order_id INT,
    IN p_product_id INT,
    IN p_quantity INT
)
BEGIN
INSERT INTO order_items (order_id, product_id, quantity)
VALUES (p_order_id, p_product_id, p_quantity);
SELECT LAST_INSERT_ID() AS order_item_id;
END //
DELIMITER ;
