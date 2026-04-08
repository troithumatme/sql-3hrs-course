-- PRIMARY KEYS

-- Primary Key = Unique + Not Null

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    amount decimal(7, 2) NOT NULL
);

-- Add Primary Key to existing table
ALTER TABLE transactions ADD PRIMARY KEY (transaction_id);

SELECT * FROM transactions;

INSERT INTO
    transactions
VALUES (1000, 3.39),
    (1001, 7.19),
    (1002, 13.99),
    (1003, 5.99);

SELECT * FROM transactions;

-- Lookup by Primary Key
SELECT amount FROM transactions WHERE transaction_id = 1003;