-- NOT NULL CONSTRAINT

CREATE TABLE products (
    product_id INT,
    product_name varchar(25) NOT NULL,
    price decimal(7, 2)
);

-- Add NOT NULL to existing column
ALTER TABLE products MODIFY price decimal(7, 2) NOT NULL;

-- This will fail as product_name cannot be NULL
INSERT INTO products VALUES (100, 'miled coffee', NULL);