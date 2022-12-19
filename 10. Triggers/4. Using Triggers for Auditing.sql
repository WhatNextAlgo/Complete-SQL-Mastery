/*
TRIGGER : A block of SQL code that automatically executed  before or after an insert , update , or delete statement.
*/

DELIMITER $$
DROP TRIGGER IF EXISTS payments_after_insert;
CREATE TRIGGER payments_after_insert
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
	 UPDATE invoices
	SET payment_total = payment_total + NEW.amount
	WHERE invoice_id = NEW.invoice_id;
    
    INSERT INTO payments_audit
    VALUES (NEW.client_id,NEW.date,NEW.amount,'INSERT',NOW());

END$$
DELIMITER ;


DELIMITER $$
DROP TRIGGER IF EXISTS payments_after_delete;
CREATE TRIGGER payments_after_delete
	AFTER DELETE ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
	SET payment_total = payment_total - OLD.amount
	WHERE invoice_id = OLD.invoice_id;
    
    INSERT INTO payments_audit
    VALUES (OLD.client_id,OLD.date,OLD.amount,'DELETE',NOW());
END$$

DELIMITER ;


INSERT INTO payments
VALUES (DEFAULT,5,3,'2019-01-01',10,1);

SELECT * FROM sql_invoicing.payments_audit;

DELETE FROM payments
WHERE payment_id = 10;

SELECT * FROM sql_invoicing.payments_audit;

