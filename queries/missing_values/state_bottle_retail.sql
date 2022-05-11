-- state_bottle_retail
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE state_bottle_retail IS NULL;
