-- invoice_and_item_number
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE invoice_and_item_number IS NULL;
