-- bottle_volume_ml
SELECT
	COUNT(*)
FROM iowa_drink_sales
WHERE bottle_volume_ml IS NULL;
