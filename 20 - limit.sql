-- limit clause is used to limit the number of records
-- usefull if you're working with a lot of data
-- can be used to display a large data on pages

SELECT * FROM customers LIMIT 3;

SELECT * FROM employees ORDER BY hire_date LIMIT 3;

SELECT * FROM customers ORDER BY last_name DESC LIMIT 2;

SELECT * FROM customers LIMIT 1, 2;