-- AUTO INCREMENT

DROP TABLE transactions;

-- Automatically generates unique sequence numbers
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount decimal(7, 2)
);

-- Set custom starting value (Default is 1)
ALTER TABLE transactions AUTO_INCREMENT = 1000;

INSERT INTO
    transactions (amount)
VALUES (3.39),
    (7.19),
    (13.99),
    (5.99);

INSERT INTO transactions (amount) VALUES (11.09), (10.08);

SELECT * FROM transactions;