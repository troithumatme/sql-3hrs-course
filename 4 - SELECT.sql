-- SELECT QUERIES

-- Select specific columns
SELECT first_name, last_name FROM employees;

-- Select with primary key condition
SELECT * FROM employees WHERE employee_id = 1;

-- Filter by string
SELECT * FROM employees WHERE first_name = 'Phong Lan';

-- Filter by numeric comparison
SELECT * FROM employees WHERE hourly_pay >= 500;

-- Filter by date
SELECT * FROM employees WHERE hire_date >= '1997-09-11';

-- Filter by inequality
SELECT * FROM employees WHERE employee_id != 1;

-- Filter for NULL values
SELECT * FROM employees WHERE hire_date IS NULL;

-- Filter for non-NULL values
SELECT * FROM employees WHERE hire_date IS NOT NULL;