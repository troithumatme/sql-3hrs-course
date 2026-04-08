-- DATE AND TIME FUNCTIONS

-- CREATE TABLE test ( date DATE, time TIME, datetime DATETIME );
SELECT * FROM test;

-- CURRENT_DATE(): 'YYYY-MM-DD'
-- CURRENT_TIME(): 'HH:MM:SS'
-- NOW(): 'YYYY-MM-DD HH:MM:SS'

-- Insert records using system time functions
INSERT INTO
    test
VALUES (
        CURRENT_DATE(),
        CURRENT_TIME(),
        NOW()
    );

-- Date arithmetic (tomorrow's date)
INSERT INTO test VALUES ( CURRENT_DATE() + 1, NULL, NULL );

SELECT * FROM test;

-- Clean up
DROP TABLE test;