INSERT INTO transactions (amount, customer_id) VALUES (1.19, NULL);

SELECT * FROM transactions;

INSERT INTO
    customers (first_name, last_name)
VALUES ('Hộ Hoa', 'Tán Sư');

SELECT * FROM customers;

SELECT
    transaction_id,
    amount,
    first_name,
    last_name
FROM transactions
    INNER JOIN customers ON transactions.customer_id = customers.customer_id;

SELECT *
FROM transactions
    LEFT JOIN customers ON transactions.customer_id = customers.customer_id;

SELECT *
FROM transactions
    RIGHT JOIN customers ON transactions.customer_id = customers.customer_id;