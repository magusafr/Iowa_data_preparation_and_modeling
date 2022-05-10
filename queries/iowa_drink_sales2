CREATE TABLE IF NOT EXISTS iowa_drink_sales2(
    invoice_and_item_number TEXT,
	date date,
	store_number TEXT,
	store_name TEXT,
	address TEXT,
	city TEXT,
	zip_code TEXT,
	county_number TEXT,
	county TEXT,
	category TEXT,
	category_name TEXT,
	vendor_number TEXT,
	vendor_name TEXT,
    item_number TEXT,
	item_description TEXT,
	pack INTEGER,
	bottle_volume_ml INTEGER,
	state_bottle_cost DOUBLE PRECISION,
	state_bottle_retail DOUBLE PRECISION,
	bottles_sold INTEGER,
	sale_dollars DOUBLE PRECISION,
	volume_sold_liters DOUBLE PRECISION,
	volume_sold_gallons DOUBLE PRECISION);

INSERT INTO iowa_drink_sales2(invoice_and_item_number,
							  date,
							  store_number,
							  store_name,
							  address,
							  city,
							  zip_code,
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
							  volume_sold_gallons)
SELECT invoice_and_item_number,
	  date,
	  store_number,
	  store_name,
	  address,
	  city,
	  zip_code,
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
	  volume_sold_gallons
FROM(
	SELECT *
	FROM (
			SELECT *
			FROM iowa_drink_sales
			WHERE address IS NOT null AND
			  county IS NOT null AND
			  county_number IS NOT null AND
			  zip_code IS NOT null AND
			  city IS NOT null AND
			  category IS NOT null AND
			  category_name IS NOT null AND
			  item_description IS NOT null AND
        vendor_number IS NOT null AND
        vendor_name IS NOT null
		 ) AS iowa_drink_sales1
	WHERE store_name IN (SELECT DISTINCT(store_name)
						 FROM (SELECT
								  store_name,
								  COUNT(DISTINCT(store_number))  AS total_store_number,
								  COUNT(DISTINCT(address))  AS total_address,
								  COUNT(DISTINCT(county)) AS total_county,
								  COUNT(DISTINCT(county_number))  AS total_county_number,
								  COUNT(DISTINCT(zip_code)) AS total_zip_code,
								  COUNT(DISTINCT(city)) AS total_city
							   FROM (
										SELECT *
										FROM iowa_drink_sales
										WHERE address IS NOT null AND
										  county IS NOT null AND
										  county_number IS NOT null AND
										  zip_code IS NOT null AND
										  city IS NOT null AND
										  category IS NOT null AND
										  category_name IS NOT null AND
										  item_description IS NOT null
									 ) AS iowa_drink_sales1
							   GROUP BY
								  store_name
							   HAVING
								  COUNT(DISTINCT(store_number)) = 1 AND
								  COUNT(DISTINCT(address)) = 1 AND
								  COUNT(DISTINCT(county)) = 1 AND
								  COUNT(DISTINCT(county_number)) = 1 AND
								  COUNT(DISTINCT(zip_code)) = 1 AND
								  COUNT(DISTINCT(city)) = 1
							) AS location_list)
	) AS iowa_drink_sales_
