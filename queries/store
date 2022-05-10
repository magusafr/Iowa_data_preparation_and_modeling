CREATE TABLE IF NOT EXISTS store(
    store_number TEXT PRIMARY KEY,
    store_name TEXT,
    address TEXT,
    city TEXT,
    zip_code TEXT,
	county_number TEXT,
	county TEXT);

INSERT INTO store(store_number, store_name, address, city, zip_code, county_number, county)
SELECT store_number, store_name, address, city, zip_code, county_number, county
FROM (
  	  SELECT *,
  		   ROW_NUMBER () OVER (ORDER BY store_name) AS store_number
  	 FROM(
        	 SELECT
        				DISTINCT ON (store_name) store_name,
        						 address,
        						 city,
        						 zip_code,
        						 county_number,
        						 county
        	    FROM iowa_drink_sales2) AS store_dimension_
  	 ) AS store_dimension
