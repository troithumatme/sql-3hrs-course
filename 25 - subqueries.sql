-- subquery
-- a query within another query
-- query (subquery)

SELECT * FROM employees;

SELECT
    first_name,
    last_name,
    hourly_pay,
    (
        SELECT AVG(hourly_pay)
        FROM employees
    ) AS avg_pay
FROM employees;

SELECT
    first_name,
    last_name,
    hourly_pay
FROM employees
WHERE
    hourly_pay > (
        SELECT AVG(hourly_pay)
        FROM employees
    );

SELECT * FROM transactions;

SELECT first_name, last_name
FROM customers
WHERE
    customer_id IN (
        SELECT DISTINCT
            customer_id
        FROM transactions
        WHERE
            transaction_id IS NOT NULL
    );

SELECT first_name, last_name
FROM customers
WHERE
    customer_id NOT IN(
        SELECT DISTINCT
            customer_id
        FROM transactions
        WHERE
            transaction_id IS NOT NULL
    );