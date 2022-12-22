USE sql_store;


CREATE INDEX idx_points ON customers  (points);

EXPLAIN Select * 
FROM customers
where  state = 'VA' 
UNION
Select * 
FROM customers
where points > 1000 ;


SHOW indexes in customers;

EXPLAIN Select * 
FROM customers
USE INDEX (idx_points)
where points + 10 > 1000 ;



