-- create employees table with the initial columns
CREATE TABLE employees (
    employee_id int,
    first_name varchar(50),
    last_name varchar(50),
    hourly_pay decimal(5, 2),
    hire_date date
);

-- select full employees table
SELECT * FROM employees;

-- change employees table name to staff
RENAME TABLE employees TO staff;
-- change back to employees table name
RENAME TABLE staff TO employees;

-- drop the db1 table
DROP TABLE db1;

-- add phone_number column
ALTER TABLE employees ADD phone_number VARCHAR(15);

-- rename phone_number column to email
ALTER TABLE employees RENAME COLUMN phone_number TO email;

-- change the email column data type
ALTER TABLE employees MODIFY COLUMN email VARCHAR(100);

-- move email column + show employee tables (2 statements executed)
ALTER TABLE employees MODIFY email VARCHAR(100) AFTER last_name;

SELECT * FROM employees;

-- move the email column's position as the first column in the table
ALTER TABLE employees MODIFY email VARCHAR(100) FIRST;

-- drop the email column + show new employee table
ALTER TABLE employees DROP COLUMN email;

SELECT * FROM employees;