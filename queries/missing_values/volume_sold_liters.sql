-- volume_sold_liters
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE volume_sold_liters IS NULL;
