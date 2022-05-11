-- county_number
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE county_number IS NULL;
