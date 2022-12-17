SELECT 
	MAX(invoice_total) AS Highest,
	MIN(invoice_total) AS Lowest,
	AVG(invoice_total) AS Averge,
	SUM(invoice_total * 1.1) AS total,
    COUNT(DISTINCT client_id) AS total_records
FROM invoices
WHERE invoice_date > '2019-07-01';

-- Exercise
SELECT 
	'First Half of 2019' AS date_range,
    SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
    SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date between '2019-01-01' AND '2019-06-30'
UNION
SELECT 
	'Second Half of 2019' AS date_range,
    SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
    SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date between '2019-07-01' AND '2019-12-31'
UNION
SELECT 
	'Total' AS date_range,
    SUM(invoice_total) AS total_sales,
    SUM(payment_total) AS total_payments,
    SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date between '2019-01-01' AND '2019-12-31'
