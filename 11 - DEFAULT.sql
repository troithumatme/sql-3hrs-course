-- DEFAULT VALUES

CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(25),
    price decimal(7, 2) DEFAULT 0
);

-- Set default for existing column
ALTER TABLE products ALTER price SET DEFAULT 0.00;

-- Products inserted without price will default to 0.00
INSERT INTO
    products (product_id, product_name)
VALUES (104, 'straw'),
    (105, 'napkin'),
    (106, 'fork'),
    (107, 'spoon');