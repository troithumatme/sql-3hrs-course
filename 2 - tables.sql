-- TABLE OPERATIONS

-- Create employees table
CREATE TABLE employees (
    employee_id int,
    first_name varchar(50),
    last_name varchar(50),
    hourly_pay decimal(5, 2),
    hire_date date
);

-- View all records
SELECT * FROM employees;

-- Rename table
RENAME TABLE employees TO staff;

RENAME TABLE staff TO employees;

-- Delete table
DROP TABLE db1;

-- Add new column
ALTER TABLE employees ADD phone_number VARCHAR(15);

-- Rename column
ALTER TABLE employees RENAME COLUMN phone_number TO email;

-- Modify column data type
ALTER TABLE employees MODIFY COLUMN email VARCHAR(100);

-- Change column position
ALTER TABLE employees MODIFY email VARCHAR(100) AFTER last_name;

SELECT * FROM employees;

-- Move column to first position
ALTER TABLE employees MODIFY email VARCHAR(100) FIRST;

-- Remove column
ALTER TABLE employees DROP COLUMN email;

SELECT * FROM employees;