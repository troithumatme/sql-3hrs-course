-- update hourly pay for Thiền Lưu (employee_id=7)
UPDATE employees SET hourly_pay = 111.1 WHERE employee_id = 7;

-- update multiple columns for Thiền Lưu (employee_id=7)
UPDATE employees
SET
    hourly_pay = 222.22,
    hire_date = '2025-02-01'
WHERE
    employee_id = 7;

SELECT * FROM employees;

-- set NULL for hire_date for employee_id=7
UPDATE employees SET hire_date = NULL WHERE employee_id = 7;

SELECT * FROM employees;

-- *dangerous* set all hour_pay to 0 for all employees
UPDATE employees SET hourly_pay = 0;

-- *dangerours* delete all employees data
DELETE FROM employees;

-- delete employee with employee_id=7
DELETE FROM employees WHERE employee_id = 7;

SELECT * FROM employees;