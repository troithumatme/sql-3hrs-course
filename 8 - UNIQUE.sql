--  create products table with the initial columns
--  the product_name column is unique, meaning no two products can have the same name
--  if we try to insert a product with a name that already exists, it will result in an error
CREATE TABLE products (
    product_id INT,
    product_name varchar(25) UNIQUE,
    price decimal(7, 2)
);

--  if initially we created the products table without the UNIQUE constraint, we can add it later using ALTER TABLE
ALTER TABLE products ADD CONSTRAINT UNIQUE (product_name);

SELECT * FROM products;

--  insert some products with 2 duplicate product names to test the UNIQUE constraint
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

--  this should work because all product names are unique
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