-- CHECK CONSTRAINT

-- Ensure values meet specific criteria
CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE,
    CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10)
);

-- Add constraint to existing table
ALTER TABLE employees
ADD CONSTRAINT check_hourly_pay CHECK (hourly_pay >= 10);

-- This fails (hourly_pay < 10)
INSERT INTO
    employees
VALUES (
        8,
        'Tiểu',
        'Đạo Sĩ',
        9.99,
        '2026-12-19'
    );

-- This succeeds (hourly_pay >= 10)
INSERT INTO
    employees
VALUES (
        8,
        'Tiểu',
        'Đạo Sĩ',
        11.11,
        '2026-12-19'
    );

SELECT * FROM employees;

-- Remove constraint
ALTER TABLE employees DROP CONSTRAINT chk_hourly_pay;