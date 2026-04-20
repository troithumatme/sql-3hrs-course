-- FOREIGN KEYS

-- Establish relationships between tables
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

INSERT INTO
    customers (first_name, last_name)
VALUES ('Trời Thu', 'Mát Mẻ'),
    ('Thiên Hà', 'Lãng Khách'),
    ('Thiên', 'Mệnh');

SELECT * FROM customers;

DROP TABLE transactions;

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount decimal(7, 2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

ALTER TABLE transactions AUTO_INCREMENT = 1000;

INSERT INTO
    transactions (amount, customer_id)
VALUES (3.39, 2),
    (1.39, 1),
    (9.99, 3),
    (11.99, 3);

SELECT * FROM transactions;