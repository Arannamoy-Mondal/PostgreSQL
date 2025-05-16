-- Scalar Function: Scalar function operate on a single value and return a single value. They perform an operation on each row's data independently.
SELECT UPPER('Hello World');
SELECT LOWER('HELLO WORLD');
SELECT CONCAT('Hello',' ','World');
SELECT LENGTH('Hello World');

-- Aggregate Function: Aggregate data returns full table data.
SELECT max(total_supply) FROM crypto;
SELECT min(total_supply) FROM crypto;
SELECT avg(crypto.total_supply) FROM crypto;
SELECT * FROM crypto WHERE total_supply=(select max(total_supply) from crypto);