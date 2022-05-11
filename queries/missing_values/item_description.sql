-- item_description
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE item_description IS NULL;
