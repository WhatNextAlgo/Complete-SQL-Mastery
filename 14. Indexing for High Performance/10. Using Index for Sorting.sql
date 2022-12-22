
SHOW indexes in customers;

EXPLAIN Select customer_id
FROM customers
Order By state DESC, points DESC;

EXPLAIN 
Select customer_id
FROM customers
Order By first_name;
show status like 'last_query_cost';

