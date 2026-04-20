-- triggers = when an events happens, do something
-- ex. (INSERT, UPDATE, DELETE)
-- checks data, handles errors, auditing tables

ALTER TABLE employees
ADD COLUMN salary DECIMAL(10, 2) AFTER hourly_pay;

UPDATE employees SET salary = hourly_pay * 2080;

CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

UPDATE employees SET hourly_pay = 111.09 WHERE employee_id = 1;

ALTER TABLE employees MODIFY COLUMN hourly_pay DECIMAL(7, 2);

UPDATE employees SET hourly_pay = hourly_pay + 3;

DELETE FROM employees WHERE employee_id = 9;

CREATE TRIGGER before_hourly_pay_insert BEFORE INSERT ON employees FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

INSERT INTO
    employees
VALUES (
        9,
        'Hộ Hoa',
        'Tán Sư',
        702.69,
        NULL,
        'Trưởng Lão',
        '2007-10-26',
        1
    );

CREATE TABLE expenses (
    expensive_id INT AUTO_INCREMENT PRIMARY KEY,
    expense_name VARCHAR(50),
    expense_total DECIMAL(10, 2)
);

INSERT INTO
    expenses
VALUES (1, 'salaries', 0),
    (2, 'supplies', 0),
    (3, 'taxes', 0);

UPDATE expenses
SET
    expense_total = (
        SELECT COALESCE(SUM(salary), 0)
        FROM employees
    )
WHERE
    expense_name = 'salaries';

CREATE TRIGGER after_salary_delete AFTER DELETE ON employees FOR EACH ROW
UPDATE expenses
SET expense_total = COALESCE(expense_total, 0) - COALESCE(OLD.salary, 0)
WHERE expense_name='salaries';

DELETE FROM employees WHERE employee_id = 9;

SELECT * FROM expenses;

CREATE TRIGGER after_salary_insert AFTER INSERT ON employees FOR EACH ROW
UPDATE expenses
SET expense_total = COALESCE(expense_total, 0) + COALESCE(NEW.salary, 0)
WHERE expense_name = 'salaries';

INSERT INTO
    employees
VALUES (
        9,
        'Hộ Hoa',
        'Tán Sư',
        702.69,
        NULL,
        'Trưởng Lão',
        '2007-10-26',
        1
    );

CREATE TRIGGER after_salary_update AFTER UPDATE ON employees FOR EACH ROW
UPDATE expenses
SET expense_total = COALESCE(expense_total, 0) + (COALESCE(NEW.salary, 0) - COALESCE(OLD.salary, 0))
WHERE expense_name = 'salaries';

UPDATE employees
SET
    hourly_pay = hourly_pay + 2
WHERE
    employee_id = 4;

SELECT * FROM expenses;

SELECT SUM(salary) FROM employees;