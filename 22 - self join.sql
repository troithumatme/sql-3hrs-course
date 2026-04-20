-- self join
-- join another copy of a table to itself
-- used to compare rows of the same table
-- helps to display a hierarchical data

ALTER TABLE customers ADD referral_id INT;

UPDATE customers SET referral_id = 1 WHERE customer_id = 2;

UPDATE customers SET referral_id = 2 WHERE customer_id = 3;

UPDATE customers SET referral_id = 2 WHERE customer_id IN (4, 5);

SELECT *
FROM customers AS a
    INNER JOIN customers AS b ON a.referral_id = b.customer_id;

SELECT a.first_name, a.last_name, CONCAT(
        b.first_name, ' ', b.last_name
    ) AS referred_by
FROM customers AS a
    INNER JOIN customers AS b ON a.referral_id = b.customer_id;

SELECT a.first_name, a.last_name, CONCAT(
        b.first_name, ' ', b.last_name
    ) AS referred_by
FROM customers AS a
    LEFT JOIN customers AS b ON a.referral_id = b.customer_id;

ALTER TABLE employees ADD supervisor_id INT;

UPDATE employees SET supervisor_id = 6 WHERE employee_id = 1;

\ UPDATE employees SET supervisor_id = 6 WHERE employee_id = 1;

UPDATE employees SET supervisor_id = 1 WHERE employee_id IN (2, 9);

UPDATE employees SET supervisor_id = 4 WHERE employee_id = 7;

SELECT a.first_name, a.last_name, CONCAT(
        b.first_name, ' ', b.last_name
    ) AS "reports to"
FROM employees AS a
    INNER JOIN employees AS b ON a.supervisor_id = b.employee_id;

SELECT a.first_name, a.last_name, CONCAT(
        b.first_name, ' ', b.last_name
    ) AS "reports to"
FROM employees AS a
    LEFT JOIN employees AS b ON a.supervisor_id = b.employee_id;