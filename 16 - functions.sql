SELECT COUNT(amount) FROM transactions;

SELECT COUNT(amount) AS 'today\'s transactions' FROM transactions;

SELECT MAX(amount) AS 'maximum' FROM transactions;

SELECT MIN(amount) AS 'minimum' FROM transactions;

SELECT CONCAT(first_name, last_name) AS full_name FROM customers;

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM customers;