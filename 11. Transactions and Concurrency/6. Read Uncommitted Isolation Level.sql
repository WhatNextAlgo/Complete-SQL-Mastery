-- SESSION-1
USE sql_store;

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT POINTS 
FROM customers
WHERE customer_id = 1;


-- SESSION-2
USE sql_store;

START TRANSACTION;
UPDATE customers
	SET points = 20
WHERE customer_id = 1;
ROLLBACK;
