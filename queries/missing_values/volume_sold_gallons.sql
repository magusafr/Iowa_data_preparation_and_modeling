-- volume_sold_gallons
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE volume_sold_gallons IS NULL;
