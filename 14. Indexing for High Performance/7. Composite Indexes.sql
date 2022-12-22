USE sql_store;

SHOW INDEXES IN customers;
EXPLAIN Select customer_id from customers
where state = 'CA' and points > 1000;

-- COMPOSITE INDEXES
CREATE INDEX idx_state_points ON customers (state,points);

EXPLAIN Select customer_id from customers
where state = 'VA' and points > 1000;

DROP INDEX idx_state on customers;
DROP INDEX idx_points on customers;
