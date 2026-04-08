-- CREATE TABLE test ( date DATE, time TIME, datetime DATETIME );

SELECT * FROM test;

--  CURRENT_DATE() returns the current date in 'YYYY-MM-DD' format
--  CURRENT_TIME() returns the current time in 'HH:MM:SS' format
--  NOW() returns the current date and time in 'YYYY-MM-DD HH:MM:SS' format

--  add the current date, time, and datetime as a new record to the test table
INSERT INTO
    test
VALUES (
        CURRENT_DATE(),
        CURRENT_TIME(),
        NOW()
    );

--  add another record with NULL time/datetime values and tomorrow's date
INSERT INTO test VALUES ( CURRENT_DATE() + 1, NULL, NULL );

SELECT * FROM test;

--  drop the test table
DROP TABLE test;