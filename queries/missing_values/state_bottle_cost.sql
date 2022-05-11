-- state_bottle_cost
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE state_bottle_cost IS NULL;
