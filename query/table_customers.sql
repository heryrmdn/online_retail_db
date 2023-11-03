CREATE TABLE customers
(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    gender ENUM('Laki-Laki', 'Perempuan') NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

SHOW TABLES;
DESCRIBE customers;

INSERT INTO customers(name, email, gender)
VALUES('John Doe', ' johndoe@mail.com', 'Laki-Laki'),
('Jane Smith', 'janesmith@mail.com', 'Perempuan'),
('Michael Johnson', 'michaeljohnson@mail.com', 'Laki-Laki'),
('Emily Davis', 'emilydavis@mail.com', 'Perempuan'),
('David Lee', 'davidlee@mail.com', 'Laki-Laki'),
('Sarah Williams', 'sarahwilliams@mail.com', 'Perempuan'),
('James Brown', 'jamesbrown@mail.com', 'Laki-Laki'),
('Jessica Taylor', 'jessicataylor@mail.com', 'Perempuan'),
('William White', 'williamwhite@mail.com', 'Laki-Laki'),
('Olivia Martinez', 'oliviamartinez@mail.com', 'Perempuan');

SELECT * FROM customers;