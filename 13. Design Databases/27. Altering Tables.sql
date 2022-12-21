USE sql_store2;

ALTER TABLE customers
	ADD COLUMN last_name VARCHAR(50) NOT NULL AFTER first_name,
    ADD COLUMN city VARCHAR(50) NOT NULL,
    MODIFY COLUMN first_name VARCHAR(55) DEFAULT '',
    DROP points
    ;
