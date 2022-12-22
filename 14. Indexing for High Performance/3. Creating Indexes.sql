USE sql_store;
CREATE INDEX idx_state ON customers (state);
EXPLAIN select customer_id FROM customers WHERE state = 'CA';


/* 
EXERCISE:
  Write a query find customers with more then 1000 points
*/

CREATE INDEX idx_points ON customers (points);
EXPLAIN select * FROM customers where points > 1000;
