DROP Procedure IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE Procedure get_clients_by_state
(
	state CHAR(2)
)
BEGIN 
	iF state IS NULL THEN 
		Select * FROM sql_invoicing.clients;
	ELSE 
		Select * FROM sql_invoicing.clients c
		WHERE c.state = state;
    END IF;
	
END$$

DELIMITER ;

-- Modified Version
DROP Procedure IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE Procedure get_clients_by_state
(
	state CHAR(2)
)
BEGIN 
	Select * FROM sql_invoicing.clients c
	WHERE c.state = IFNULL(state,c.state);
END$$

DELIMITER ;


CALL get_clients_by_state(NULL);


-- EXERCISE
"""
Write a stored Procedure called get_payments
with two parameters

client_id => INT
payment_method_id => TINYINT
"""
DROP PROCEDURE IF EXISTS get_payments;

USE sql_invoicing;
DELIMITER $$
CREATE PROCEDURE  get_payments
(
	client_id INT,
    payment_method_id TINYINT
)
BEGIN
	SELECT * FROM payments p
    WHERE p.client_id =  IFNULL(client_id,p.client_id)
		AND p.payment_method = IFNULL(payment_method_id,p.payment_method);
END$$
DELIMITER ;

CALL get_payments(NULL,NULL);
CALL get_payments(5,NULL);
CALL get_payments(NULL,2);
CALL get_payments(5,1);




