CREATE TABLE IF NOT EXISTS vendor(
    vendor_number TEXT PRIMARY KEY,
    vendor_name TEXT);

INSERT INTO vendor(vendor_number, vendor_name)
SELECT vendor_number, vendor_name
FROM (
	  SELECT *,
		   ROW_NUMBER () OVER (ORDER BY vendor_name) AS vendor_number
	  FROM(
		SELECT
				DISTINCT vendor_name
	    FROM iowa_drink_sales2) AS vendor_dimension_
	 ) AS vendor_dimension
