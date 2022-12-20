/*
TRANSACTIONS : A group of SQL statements that represent a single unit of work.

If two transaction commiting the same table, it will lock the second transaction until first one finish.
It is default behaviour of Concurrency and locking.
*/

USE sql_store;

START TRANSACTION;
UPDATE customers
SET points = points + 10
WHERE customer_id = 1;
COMMIT;
