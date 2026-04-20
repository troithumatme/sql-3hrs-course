-- ON DELETE SET NULL = when a FK is deleted, replace FK with NULL
-- ON DELETE CASCADE = when a FK is deleted, delete row
SET foreign_key_checks = 1;

DELETE FROM customers WHERE customer_id = 4;

INSERT INTO
    customers
VALUES (
        4,
        'Hộ Hoa',
        'Tán Sư',
        2,
        'hohoatansu@gmail.com'
    );

ALTER TABLE transactions DROP FOREIGN KEY fk_customer_id;

ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers (customer_id) ON DELETE SET NULL;

DELETE FROM customers WHERE customer_id = 4;

SELECT FROM transactions;

ALTER TABLE transactions
ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers (customer_id) ON DELETE CASCADE;

ALTER TABLE transactions DROP FOREIGN KEY fk_customer_id;

UPDATE transactions SET customer_id = 4 WHERE transaction_id = 1005;

DELETE FROM customers WHERE customer_id = 4;

SELECT * FROM transactions;