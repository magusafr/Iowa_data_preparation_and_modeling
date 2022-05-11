-- bottles_sold
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE bottles_sold IS NULL;
