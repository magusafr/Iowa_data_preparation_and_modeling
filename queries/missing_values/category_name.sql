-- category_name
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE category_name IS NULL;
