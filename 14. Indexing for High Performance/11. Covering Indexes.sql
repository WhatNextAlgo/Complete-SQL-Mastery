
SHOW indexes in customers;


EXPLAIN 
Select customer_id
FROM customers
Order By state;

EXPLAIN 
Select customer_id,state,points
FROM customers
Order By state;

show status like 'last_query_cost';

