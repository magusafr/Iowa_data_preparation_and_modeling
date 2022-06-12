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


-- Cleaning category
--- "American Cordials & Liqueurs"
UPDATE product SET category_name = 'American Cordials & Liqueurs' WHERE category_name = 'American Cordials & Liqueur';
UPDATE product SET category_number = '1081000' WHERE category_number = '1081300';

--- "American Distilled Spirits Specialty"
UPDATE product SET category_name = 'American Distilled Spirits Specialty' WHERE category_name = 'American Distilled Spirit Specialty';
UPDATE product SET category_number = '1091000' WHERE category_number = '1091100';

--- "American Vodkas"
UPDATE product SET category_name = 'American Vodkas' WHERE category_name = 'American Vodka';
UPDATE product SET category_number = '1031100' WHERE category_number = '1031000';

--- "Cocktails /Rtd"
UPDATE product SET category_name = 'Cocktails /Rtd' WHERE category_name = 'Cocktails / Rtd';
UPDATE product SET category_number = '1071100' WHERE category_number = '1070000';

--- "Imported Cordials & Liqueurs"
UPDATE product SET category_name = 'Imported Cordials & Liqueurs' WHERE category_name = 'Imported Cordials & Liqueur';
UPDATE product SET category_number = '1082000' WHERE category_number = '1082100';

--- "Imported Distilled Spirits Specialty"
UPDATE product SET category_name = 'Imported Distilled Spirits Specialty' WHERE category_name = 'Imported Distilled Spirit Specialty';
UPDATE product SET category_number = '1092000' WHERE category_number = '1092100';

--- "Imported Vodkas"
UPDATE product SET category_name = 'Imported Vodkas' WHERE category_name = 'Imported Vodka';
UPDATE product SET category_number = '1032100' WHERE category_number = '1032000';

--- "Temporary & Specialty Packages"
UPDATE product SET category_name = 'Temporary & Specialty Packages' WHERE category_name = 'Temporary &  Specialty Packages';
UPDATE product SET category_number = '1701100' WHERE category_number = '1700000';

UPDATE product SET category_name = 'Temporary & Specialty Packages' WHERE category_name = 'Temporary  & Specialty Packages';
UPDATE product SET category_number = '1701100' WHERE category_number = '1070100';
