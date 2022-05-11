SELECT
	invoice_and_item_number,
	date,
	store_number,
	store_name,
	address,
	city,
	zip_code,
	store_location,
	county_number,
	county,
	category,
	category_name,
	vendor_number,
	vendor_name,
	item_number,
	item_description,
	pack,
	bottle_volume_ml,
	state_bottle_cost,
	state_bottle_retail,
	bottles_sold,
	sale_dollars,
	volume_sold_liters,
	volume_sold_gallons,
	COUNT(*) AS total_duplicate
FROM iowa_drink_sales
GROUP BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
ORDER BY total_duplicate DESC;
