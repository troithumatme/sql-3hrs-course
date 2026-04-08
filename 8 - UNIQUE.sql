-- UNIQUE CONSTRAINT

-- Prevent duplicate values in specific columns
CREATE TABLE products (
    product_id INT,
    product_name varchar(25) UNIQUE,
    price decimal(7, 2)
);

-- Add UNIQUE constraint to existing table
ALTER TABLE products ADD CONSTRAINT UNIQUE (product_name);

-- This insertion will fail due to duplicate 'graphic card'
--  this will result in an error because 'graphic card' is duplicated
INSERT INTO
    products
VALUES (100, 'miled coffee', 19.99),
    (101, 'matcha latte', 9.99),
    (
        102,
        'mechanic keyboard',
        399.99
    ),
    (103, 'graphic card', 3999.99),
    (104, 'graphic card', 2999.99);

-- Successful insertion with unique names
INSERT INTO
    products
VALUES (100, 'miled coffee', 19.99),
    (101, 'matcha latte', 9.99),
    (
        102,
        'mechanic keyboard',
        399.99
    ),
    (103, 'graphic card', 3999.99);

SELECT * FROM products;