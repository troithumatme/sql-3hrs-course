DROP TABLE transactions;

-- the AUTO_INCREMENT constraint automatically generates a unique value for the transaction_id column
-- whenever a new row is inserted into the transactions table. This means that we do not need to
-- specify a value for transaction_id when inserting new transactions,
-- and it will automatically increment by 1 for each new transaction.
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount decimal(7, 2)
);

-- if we want to start the AUTO_INCREMENT values from a specific number, we can use the ALTER TABLE statement to set the starting value
-- For example, if we want to start from 1000, we can run the following command:
-- If it's obmited, the AUTO_INCREMENT will start from 1 by default
ALTER TABLE transactions AUTO_INCREMENT = 1000;

INSERT INTO
    transactions (amount)
VALUES (3.39),
    (7.19),
    (13.99),
    (5.99);

INSERT INTO transactions (amount) VALUES (11.09), (10.08);

SELECT * FROM transactions;