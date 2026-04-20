-- GROUP BY = aggregate all rows by a specific column
-- often used with aggregate functions
-- ex. SUM(), MAX(), MIN(), AVG(), COUNT()

SELECT * FROM transactions;

ALTER TABLE transactions ADD COLUMN order_date DATE;

INSERT INTO
    transactions
VALUES (1005, 3.99, 4, '2026-03-01'),
    (
        1006,
        19.39,
        NULL,
        '2026-04-01'
    );

UPDATE transactions
SET
    order_date = '2025-09-11'
WHERE
    transaction_id IN (1000, 1001, 1002);

UPDATE transactions
SET
    order_date = '2026-07-09'
WHERE
    transaction_id IN (1003, 1004);

SELECT SUM(amount), order_date FROM transactions GROUP BY order_date;

SELECT MAX(amount), order_date FROM transactions GROUP BY order_date;

SELECT MIN(amount), order_date FROM transactions GROUP BY order_date;

SELECT COUNT(amount), order_date
FROM transactions
GROUP BY
    order_date;

SELECT SUM(amount), customer_id
FROM transactions
GROUP BY
    customer_id;

SELECT MAX(amount), customer_id
FROM transactions
GROUP BY
    customer_id;

SELECT MIN(amount), customer_id
FROM transactions
GROUP BY
    customer_id;

SELECT AVG(amount), customer_id
FROM transactions
GROUP BY
    customer_id;

SELECT COUNT(amount), customer_id
FROM transactions
GROUP BY
    customer_id;

SELECT COUNT(amount), customer_id
FROM transactions
GROUP BY
    customer_id
HAVING
    COUNT(amount) > 1
    AND customer_id IS NOT NULL;