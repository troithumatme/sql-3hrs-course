--  set autocommit to off to manual control the transaction, and then commit or rollback the transaction
SET AUTOCOMMIT = OFF;

--  commit to save the changes to the database
COMMIT;

--  accidentally delete all employees data
DELETE FROM employees;

SELECT * FROM employees;

--  rollback to undo the changes to the database
ROLLBACK;

SELECT * FROM employees;