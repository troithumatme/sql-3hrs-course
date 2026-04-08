-- create products table with the initial columns and set a default value of 0 for the price column
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(25),
    price decimal(7, 2) DEFAULT 0
);

--  set a default value of 0 for the price column using ALTER TABLE
ALTER TABLE products ALTER price SET DEFAULT 0.00;

--  these products will have a price of 0 because we did not specify a price value and the default is set to 0
INSERT INTO
    products (product_id, product_name)
VALUES (104, 'straw'),
    (105, 'napkin'),
    (106, 'fork'),
    (107, 'spoon');