--  create a table with a columnn that cannot have NULL values
CREATE TABLE products (
    product_id INT,
    product_name varchar(25) NOT NULL,
    price decimal(7, 2)
);

-- add NOT NULL constraint later to an existing column
ALTER TABLE products MODIFY price decimal(7, 2) NOT NULL;

--  this will result in an error because the product_name column cannot have NULL values
INSERT INTO products VALUES (100, 'miled coffee', NULL);