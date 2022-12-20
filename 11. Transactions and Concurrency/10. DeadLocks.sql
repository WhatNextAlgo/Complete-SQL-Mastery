-- SESSION -1
USE sql_store;

START TRANSACTION;
UPDATE customers SET state = 'VA' WHERE customer_id = 1;
UPDATE orders SET status = 1 where order_id = 1;
COMMIT;

-- SESSION -2
USE sql_store;

START TRANSACTION;
UPDATE orders SET status = 1 where order_id = 1;
UPDATE customers SET state = 'VA' WHERE customer_id = 1;

COMMIT;
