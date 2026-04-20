-- stored procedures = is prepared SQL code that you can save
-- great if there's a query that you write often

DELIMITER $$

CREATE PROCEDURE get_customers () BEGIN
    SELECT *
    FROM customers;
END $$

DELIMITER;

CALL get_customers ();

DELIMITER $$

CREATE PROCEDURE find_customer (IN id INT) BEGIN
    SELECT * 
    FROM customers
    WHERE customer_id = id;
END $$

DELIMITER;

CALL find_customer (1);

DROP PROCEDURE find_customer;

DELIMITER $$

CREATE PROCEDURE find_customer (
    IN f_name VARCHAR(50),
    l_name VARCHAR(50)
)
BEGIN
    SELECT *
    FROM customers
    WHERE
        first_name = f_name
        AND last_name = l_name;
END $$

DELIMITER;

CALL find_customer ('Thiên', 'Mệnh');