-- TRANSACTION CONTROL

-- Disable autocommit for manual transaction management
SET AUTOCOMMIT = OFF;

-- Save changes permanently
COMMIT;

-- Simulation of accidental deletion
DELETE FROM employees;

SELECT * FROM employees;

-- Undo changes since last commit
ROLLBACK;

SELECT * FROM employees;