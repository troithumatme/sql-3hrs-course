--  PRIMARY KEY = UNIQUE + NOT NULL + only one primary key per table

--  create transactions table with a primary key on the transaction_id column
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    amount decimal(7, 2) NOT NULL
);

--  if we initially created the transactions table without the PRIMARY KEY constraint, we can add it later using ALTER TABLE
ALTER TABLE transactions ADD PRIMARY KEY (transaction_id);

SELECT * FROM transactions;

--  instert some transactions with duplicate transaction_id values to test the PRIMARY KEY constraint
INSERT INTO
    transactions
VALUES (1000, 3.39),
    (1001, 7.19),
    (1002, 13.99),
    (1003, 5.99);

SELECT * FROM transactions;

--  refund for the client where transaction_id is 1003
SELECT amount FROM transactions WHERE transaction_id = 1003;