-- zip_code
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE zip_code IS NULL;
