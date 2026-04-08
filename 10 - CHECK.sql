--  create a table with a CHECK constraint to ensure that the hourly pay is at least 10
CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE,
    CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10)
);

--  add CHECK constraint later to an existing column
ALTER TABLE employees
ADD CONSTRAINT check_hourly_pay CHECK (hourly_pay >= 10);

-- this will result in an error because the hourly pay is less than 10
INSERT INTO
    employees
VALUES (
        8,
        'Tiểu',
        'Đạo Sĩ',
        9.99,
        '2026-12-19'
    );

--  this should work because the hourly pay is greater than or equal to 10
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

-- drop the CHECK constraint to allow any hourly pay value
ALTER TABLE employees DROP CONSTRAINT chk_hourly_pay;