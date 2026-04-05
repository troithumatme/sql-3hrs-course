-- -- create database name db1
-- CREATE DATABASE db1;
-- -- delete db1
-- DROP DATABASE db1;

-- -- select default schema (db1)
-- USE db1;

-- -- make the db1 read only
-- ALTER DATABASE db1 READ ONLY = 1;
-- -- make the db1 adjustable
-- ALTER DATABASE db1 READ ONLY = 0;

-- -- create employees table with the initial columns
-- CREATE TABLE employees (
--     employee_id int,
--     first_name varchar(50),
--     last_name varchar(50),
--     hourly_pay decimal(5, 2),
--     hire_date date
-- );

-- -- select full employees table
-- SELECT * FROM employees;

-- -- change employees table name to staff
-- RENAME TABLE employees TO staff;
-- -- change back to employees table name
-- RENAME TABLE staff TO employees;

-- -- drop the db1 table
-- DROP TABLE db1;

-- -- add phone_number column
-- ALTER TABLE employees ADD phone_number VARCHAR(15);
-- -- rename phone_number column to email
-- ALTER TABLE employees RENAME COLUMN phone_number TO email;

-- -- change the email column data type
-- ALTER TABLE employees MODIFY COLUMN email VARCHAR(100);

-- -- move email column + show employee tables (2 statements executed)
-- ALTER TABLE employees MODIFY email VARCHAR(100) AFTER last_name;

-- SELECT * FROM employees;

-- -- move the email column's position as the first column in the table
-- ALTER TABLE employees MODIFY email VARCHAR(100) FIRST;

-- -- drop the email column + show new employee table
-- ALTER TABLE employees DROP COLUMN email;

-- SELECT * FROM employees;

-- -- insert 1 row into the table
-- INSERT INTO
--     employees
-- VALUES (
--         1,
--         'Trời Thu',
--         'Mát Mẻ',
--         11.09,
--         '1997-09-11'
--     );

-- SELECT * FROM employees;

-- -- insert multiple rows into the table
-- INSERT INTO
--     employees
-- VALUES (
--         2,
--         'Phong Lan',
--         'Chi Chủ',
--         10.08,
--         '1997-08-10'
--     ),
--     (
--         3,
--         'Bên Dưới',
--         'Thâm Uyên',
--         333.3,
--         '2022-03-15'
--     ),
--     (
--         4,
--         'Thiên Hà',
--         'Lãng Khách',
--         444.4,
--         '2022-03-15'
--     ),
--     (
--         5,
--         'Hồn',
--         'Đế',
--         777.7,
--         '2018-09-20'
--     ),
--     (
--         6,
--         'Thiên',
--         'Mệnh',
--         999.9,
--         '2026-04-04'
--     );

-- SELECT * FROM employees;

-- -- insert a row with missing data
-- INSERT INTO
--     employees (
--         employee_id,
--         first_name,
--         last_name
--     )
-- VALUES (7, 'Zen', 'Tom');

-- SELECT * FROM employees;

-- --  select specilic columns
-- SELECT first_name, last_name FROM employees;

-- -- select records with a condition
-- SELECT * FROM employees WHERE employee_id = 1;

-- -- find all employees with first name 'Phong Lan'
-- SELECT * FROM employees WHERE first_name = 'Phong Lan';

-- -- find all employees with hourly pay greater than or equal to 500
-- SELECT * FROM employees WHERE hourly_pay >= 500;