-- SESSION -1
USE sql_store;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

START transaction;
SELECT POINTS FROM customers  WHERE customer_id = 1;
SELECT POINTS FROM customers  WHERE customer_id = 1;
COMMIT;


-- SESSION 2

USE sql_store;

START TRANSACTION;
UPDATE customers
	SET points = 30
WHERE customer_id = 1;
COMMIT;
