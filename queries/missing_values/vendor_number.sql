-- vendor_number
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE vendor_number IS NULL;
