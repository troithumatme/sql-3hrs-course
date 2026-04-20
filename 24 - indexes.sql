-- index (BTREE data structure)
-- indexes are used to find values within a specific column more quickly
-- MySQL normally searches sequentially through a column
-- The longer the column, the more expensive the operation is
-- UPDATE takes more time, SELECT takes less time

SELECT * FROM transactions;

SHOW INDEXES FROM customers;

CREATE INDEX last_name_idx ON customers (last_name);

SHOW INDEXES FROM customers;

SELECT * FROM customers WHERE last_name = 'Mệnh';

-- this will be slower
SELECT * FROM customers WHERE first_name = 'Thiên';

CREATE INDEX last_name_first_name_idx ON customers (last_name, first_name);

SHOW INDEXES FROM customers;

ALTER TABLE customers DROP INDEX last_name_idx;

SHOW INDEXES FROM customers;

SELECT *
FROM customers
WHERE
    last_name = 'Mệnh'
    AND first_name = 'Thiên';