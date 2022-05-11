-- sale_dollars
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE sale_dollars IS NULL;
