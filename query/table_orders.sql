CREATE TABLE orders
(
    id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    product_id VARCHAR(5) NOT NULL,
    quantity INT NOT NULL,
    price INT NOT NULL,
    order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id), 
    FOREIGN KEY (customer_id) REFERENCES customers(id), 
    FOREIGN KEY (product_id) REFERENCES products(id)
) ENGINE = InnoDB;

SHOW TABLES;
DESCRIBE orders;

INSERT INTO orders(customer_id, product_id, quantity, price)
VALUES(1, 'P0001', 2, 23600000),
(2, 'P0004', 3, 5805000),
(3, 'P0007', 1, 16793000),
(4, 'P0005', 2, 4518000),
(5, 'P0003', 1, 14985000),
(6, 'P0006', 1, 1935000),
(7, 'P0002', 2, 35976000),
(8, 'P0009', 5, 1235000),
(9, 'P0008', 3, 7164000),
(10, 'P0010', 1, 11800000);

SELECT * FROM orders;

INSERT INTO orders(customer_id, product_id, quantity, price)
VALUES(1, 'P0004', 2, 3870000),
(1, 'P0008', 1, 2388000);

SELECT * FROM orders;