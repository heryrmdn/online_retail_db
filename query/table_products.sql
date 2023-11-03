CREATE TABLE products
(
    id VARCHAR(5) NOT NULL,
    name VARCHAR(100) NOT NULL UNIQUE,
    price INT NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    category_id VARCHAR(5) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (category_id) REFERENCES categories (id)
) ENGINE = InnoDB;

SHOW TABLES;

DESCRIBE products;

INSERT INTO products(id, name, price, stock, category_id)
VALUES('P0001', 'Smartphone Samsung Galaxy S21', 11800000, 50, 'C0001'),
('P0002', 'Laptop ASUS ZenBook 14', 17988000, 20, 'C0001'),
('P0003', 'Kamera Canon EOS 80D', 14985000, 15, 'C0001'),
('P0004', 'Sepatu Olahraga Nike Air Max', 1935000, 100, 'C0002'),
('P0005', 'Jam Tangan Fossil Grant', 2259000, 30, 'C0003'),
('P0006', 'Meja Kerja IKEA LINNMON', 1935000, 10, 'C0004'),
('P0007', 'Televisi LG OLED55C1', 16793000, 25, 'C0001'),
('P0008', 'Blender KitchenAid KSB1575', 2388000, 40, 'C0001'),
('P0009', 'Baju Anak Laki-Laki OshKosh', 247000, 75, 'C0002'),
('P0010', 'Kasur Queen Size Serta Perfect Sleeper', 1180000, 5, 'C0004');

SELECT * FROM products;

UPDATE products
SET price = 11800000
WHERE id = 'P0010';

SELECT * FROM products;