CREATE TABLE IF NOT EXISTS product(
    item_number TEXT PRIMARY KEY,
	item_description TEXT,
    category_number TEXT,
	category_name TEXT);

INSERT INTO product(item_number, category_number, category_name, item_description)
SELECT item_number, category_number, category_name, item_description
FROM (
	  SELECT *,
		   ROW_NUMBER () OVER (ORDER BY item_description, category_number, category_name) AS item_number
	  FROM(
		SELECT
				DISTINCT ON (item_description) item_description,
						 category AS category_number,
						 category_name
	    FROM iowa_drink_sales2) AS product_dimension_
	 ) AS product_dimension
