-- UPDATE & DELETE OPERATIONS

-- Update single column
UPDATE employees SET hourly_pay = 111.1 WHERE employee_id = 7;

-- Update multiple columns
UPDATE employees
SET
    hourly_pay = 222.22,
    hire_date = '2025-02-01'
WHERE
    employee_id = 7;

SELECT * FROM employees;

-- Reset value to NULL
UPDATE employees SET hire_date = NULL WHERE employee_id = 7;

SELECT * FROM employees;

-- DANGER: Update all rows
UPDATE employees SET hourly_pay = 0;

-- DANGER: Delete all records
DELETE FROM employees;

-- Delete specific record
DELETE FROM employees WHERE employee_id = 7;

SELECT * FROM employees;