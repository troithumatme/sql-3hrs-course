ALTER TABLE employees ADD COLUMN job VARCHAR(25) AFTER hourly_pay;

UPDATE employees
SET
    job = '1 - Thái Thượng Trưởng Lão'
WHERE
    employee_id = 6;

UPDATE employees SET job = 'Tông Chủ' WHERE employee_id = 1;

UPDATE employees SET job = 'Phó Tông Chủ' WHERE employee_id = 5;

UPDATE employees SET job = 'Đại Trưởng Lão' WHERE employee_id = 7;

UPDATE employees
SET
    job = 'Khách Khanh Trưởng Lão'
WHERE
    employee_id = 4;

UPDATE employees
SET
    job = 'Trưởng Lão'
WHERE
    employee_id IN (2, 3, 9);

UPDATE employees SET job = 'Thánh Tử' WHERE employee_id = 8;

SELECT * FROM employees;

SELECT * FROM employees WHERE hire_date > '2020-01-01';

SELECT *
FROM employees
WHERE
    job = 'Trưởng Lão'
    OR job = 'Đại Trưởng Lão';

SELECT * FROM employees WHERE NOT job = 'Trưởng Lão';

SELECT *
FROM employees
WHERE
    NOT job = 'Đại Trưởng Lão'
    AND NOT job = 'Trưởng Lão';

SELECT *
FROM employees
WHERE
    hire_date BETWEEN '2020-01-01' AND '2024-12-31';

SELECT *
FROM employees
WHERE
    job IN (
        'Thái Thượng Trưởng Lão',
        'Tông Chủ',
        'Đại Trưởng Lão'
    );