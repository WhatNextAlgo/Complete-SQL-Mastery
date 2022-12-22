/*
Order Of Columns :
	1. Put the most frequently used columns first.
  2. Put the columns with a higher cardinality first. 
*/

SELECT COUNT(DISTINCT STATE),
		COUNT(DISTINCT last_name)
FROM customers;

EXPLAIN Select * 
FROM customers
USE INDEX (idx_state_lastname)
where last_name like 'b%' and state = 'VA' ;

CREATE INDEX idx_lastname_state on customers (last_name,state);

CREATE INDEX idx_state_lastname on customers (state,last_name);

DROP INDEX idx_lastname_state on customers ;


