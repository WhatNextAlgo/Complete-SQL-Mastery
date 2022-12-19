/*
TRIGGER : A block of SQL code that automatically executed  before or after an insert , update , or delete statement.
*/

DELIMITER $$

CREATE TRIGGER payments_after_insert
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
	 UPDATE invoices
	SET payment_total = payment_total + NEW.amount
	WHERE invoice_id = NEW.invoice_id;

END$$
DELIMITER ;

INSERT INTO payments
VALUES (DEFAULT,5,3,'2019-01-01',10,1);



DELIMITER $$
CREATE TRIGGER payments_after_delete
	AFTER DELETE ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
	SET payment_total = payment_total - OLD.amount
	WHERE invoice_id = OLD.invoice_id;
END$$

DELIMITER ;

DELETE FROM payments
WHERE payment_id = 9
