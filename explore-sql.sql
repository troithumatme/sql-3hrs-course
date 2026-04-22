/* ============================================================
1. DATABASE & TABLE STRUCTURE
============================================================ */

-- Create and configure database
CREATE DATABASE db1;

USE db1;

ALTER DATABASE db1 READ ONLY = 0;

-- Create core employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    job VARCHAR(25),
    salary DECIMAL(10, 2),
    hire_date DATE,
    supervisor_id INT
);

-- Modify table schema (Examples)
ALTER TABLE employees ADD COLUMN email VARCHAR(100) AFTER last_name;

ALTER TABLE employees MODIFY COLUMN email VARCHAR(100) FIRST;

ALTER TABLE employees DROP COLUMN email;

/* ============================================================
2. DATA POPULATION (The Cultivation Sect)
============================================================ */

-- Bulk insert employee data
INSERT INTO
    employees (
        employee_id,
        first_name,
        last_name,
        hourly_pay,
        hire_date
    )
VALUES (
        1,
        'Trời Thu',
        'Mát Mẻ',
        11.09,
        '1997-09-11'
    ),
    (
        2,
        'Phong Lan',
        'Chi Chủ',
        10.08,
        '1997-08-10'
    ),
    (
        3,
        'Bên Dưới',
        'Thâm Uyên',
        333.33,
        '2022-03-15'
    ),
    (
        4,
        'Thiên Hà',
        'Lãng Khách',
        444.44,
        '2025-01-01'
    ),
    (
        5,
        'Hồn',
        'Đế',
        777.77,
        '2018-09-20'
    ),
    (
        6,
        'Thiên',
        'Mệnh',
        999.99,
        '2026-04-04'
    ),
    (
        7,
        'Thiền',
        'Lưu',
        111.11,
        NULL
    ),
    (
        9,
        'Hộ Hoa',
        'Tán Sư',
        699.69,
        '2007-10-26'
    );

-- Update titles (Jobs)
UPDATE employees SET job = 'Tông Chủ' WHERE employee_id = 1;

UPDATE employees
SET
    job = '1 - Thái Thượng Trưởng Lão'
WHERE
    employee_id = 6;

UPDATE employees
SET
    job = 'Trưởng Lão'
WHERE
    employee_id IN (2, 3, 9);

UPDATE employees SET job = 'Phó Tông Chủ' WHERE employee_id = 5;

-- Update hierarchy (Self-Join setup)
UPDATE employees SET supervisor_id = 6 WHERE employee_id = 1;

UPDATE employees SET supervisor_id = 1 WHERE employee_id IN (2, 9);

/* ============================================================
3. CONSTRAINTS & RELATIONSHIPS
============================================================ */

-- Create customers with Unique constraint
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    referral_id INT
);

INSERT INTO
    customers (first_name, last_name)
VALUES ('Trời Thu', 'Mát Mẻ'),
    ('Thiên Hà', 'Lãng Khách'),
    ('Hồng', 'Trần');

-- Create transactions with Foreign Key (Cascade Delete)
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(7, 2),
    customer_id INT,
    order_date DATE,
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers (customer_id) ON DELETE SET NULL
);

ALTER TABLE transactions AUTO_INCREMENT = 1000;

INSERT INTO
    transactions (
        amount,
        customer_id,
        order_date
    )
VALUES (3.39, 2, '2025-09-11'),
    (9.99, 3, '2026-07-09');

/* ============================================================
4. ADVANCED QUERIES (Joins, Aggregates, Groups)
============================================================ */

-- Report: Employee and their supervisor (Self-Join)
SELECT a.first_name, a.last_name, CONCAT(
        b.first_name, ' ', b.last_name
    ) AS "Reports To"
FROM employees AS a
    LEFT JOIN employees AS b ON a.supervisor_id = b.employee_id;

-- Aggregate: Total revenue by date with Grand Total
SELECT SUM(amount) AS total, order_date
FROM transactions
GROUP BY
    order_date
WITH
    ROLLUP;

-- Subquery: Find employees earning above average
SELECT
    first_name,
    last_name,
    hourly_pay
FROM employees
WHERE
    hourly_pay > (
        SELECT AVG(hourly_pay)
        FROM employees
    );

-- Wildcards: Find names starting with 'Th'
SELECT * FROM employees WHERE first_name LIKE 'Th%';

/* ============================================================
5. AUTOMATION (Views, Procedures, Triggers)
============================================================ */

-- Virtual Table for emails
CREATE VIEW customer_emails AS
SELECT first_name, last_name, email
FROM customers;

-- Procedure to find specific customer
DELIMITER $$

CREATE PROCEDURE find_customer (IN f_name VARCHAR(50), l_name VARCHAR(50))
BEGIN
    SELECT * FROM customers WHERE first_name = f_name AND last_name = l_name;
END $$

DELIMITER;

-- Trigger: Automatically calculate salary on pay update
CREATE TRIGGER before_hourly_pay_update
BEFORE UPDATE ON employees
FOR EACH ROW
SET NEW.salary = (NEW.hourly_pay * 2080);

/* ============================================================
6. MAINTENANCE & CLEANUP
============================================================ */

-- Safe deletion with Transactions
SET AUTOCOMMIT = OFF;

DELETE FROM employees WHERE employee_id = 9;
-- ROLLBACK; -- Use this to undo
COMMIT;
-- Use this to save

-- Final removal (Careful!)
-- DROP TABLE transactions;
-- DROP TABLE customers;
-- DROP TABLE employees;