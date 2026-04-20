-- views
-- a virtual table based on the result-set of an SQL statement
-- the fields in a view are fields from one or more real tables in the database
-- they're not real tables, but can be interacted with as if they were

SELECT * FROM employees;

CREATE VIEW employee_attendance AS
SELECT first_name, last_name
FROM employees;

SELECT * FROM employee_attendance ORDER BY last_name ASC;

DROP VIEW employee_attendance;

ALTER TABLE customers ADD COLUMN email VARCHAR(50);

UPDATE customers
SET
    email = 'troithumatme@gmail.com'
WHERE
    customer_id = 1;

UPDATE customers
SET
    email = 'thienhalangkhach@gmail.com'
WHERE
    customer_id = 2;

UPDATE customers
SET
    email = 'thienmenh@gmail.com'
WHERE
    customer_id = 3;

UPDATE customers
SET
    email = 'hohoatansu@gmail.com'
WHERE
    customer_id = 4;

UPDATE customers
SET
    email = 'hongtran@gmail.com'
WHERE
    customer_id = 5;

SELECT * FROM customers;

CREATE VIEW customer_email AS SELECT email FROM customers;

SELECT * FROM customer_email;

INSERT INTO
    customers
VALUES (
        6,
        'Cửu Thải',
        'Thánh Liên',
        3,
        'cuuthaithanhlien@gmail.com'
    );