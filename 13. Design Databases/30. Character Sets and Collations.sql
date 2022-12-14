SHOW CHARSET;

CREATE DATABASE db_name
	CHARACTER SET latin1;

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers 
(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(25) CHARACTER SET latin1 NOT NULL,
    points INT NOT NULL DEFAULT 0,
    email VARCHAR(255) NOT NULL UNIQUE
);
