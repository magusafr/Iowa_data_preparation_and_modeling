-- store_location
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE store_location IS NULL;
