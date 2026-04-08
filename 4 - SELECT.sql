--  select specilic columns
SELECT first_name, last_name FROM employees;

-- select records with a condition
SELECT * FROM employees WHERE employee_id = 1;

-- find all employees with first name 'Phong Lan'
SELECT * FROM employees WHERE first_name = 'Phong Lan';

-- find all employees with hourly pay greater than or equal to 500
SELECT * FROM employees WHERE hourly_pay >= 500;

-- find all employees hired from September 11, 1997
SELECT * FROM employees WHERE hire_date >= '1997-09-11';

--  find all employees with employee_id is not 1
SELECT * FROM employees WHERE employee_id != 1;

-- find all employees with no hired date;
SELECT * FROM employees WHERE hire_date IS NULL;

-- find all employees with hired date;
SELECT * FROM employees WHERE hire_date IS NOT NULL;