/*
Prefix Indexes : Applied on string columns 

String Columns are:
  1. CHAR
  2. VARCHAR
  3. TEXT
  4. BLOB

USE sql_store;

CREATE INDEX idx_last_name ON customers (last_name(20));

Select 
	COUNT( DISTINCT LEFT(last_name,1)) ,
    COUNT( DISTINCT LEFT(last_name,5)) 
FROM customers;
*/
