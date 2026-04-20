--  UNIONS combines the results of two or more SELECT statements

SELECT first_name, last_name
FROM employees
UNION
SELECT first_name, last_name
FROM customers;

INSERT INTO customers VALUES (5, 'Hồng', 'Trần');

SELECT first_name, last_name
FROM employees
UNION ALL
SELECT first_name, last_name
from customers;