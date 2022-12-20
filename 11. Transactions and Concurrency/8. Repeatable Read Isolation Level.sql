-- SESSION -1
USE sql_store;

SET TRANSACTION ISOLATION LEVEL repeatable read;

START transaction;
SELECT * FROM customers  WHERE state = 'VA';
COMMIT;


-- SESSION -2
USE sql_store;

START TRANSACTION;
UPDATE customers
	SET state = 'VA'
WHERE customer_id = 1;
COMMIT;
