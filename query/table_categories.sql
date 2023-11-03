CREATE TABLE categories
(
    id VARCHAR(5) NOT NULL,
    name ENUM('Elektronik', 'Pakaian', 'Aksesoris', 'Perabotan') NOT NULL,
    description TEXT,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

SHOW TABLES;

DESCRIBE categories;

INSERT INTO categories(id, name)
VALUES('C0001', 'Elektronik'),
('C0002', 'Pakaian'),
('C0003', 'Aksesoris'),
('C0004', 'Perabotan');

SELECT * FROM categories;