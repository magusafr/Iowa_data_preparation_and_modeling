CREATE TABLE IF NOT EXISTS sales(
  invoice_id VARCHAR(100),
	CONSTRAINT fk_date_time FOREIGN KEY(invoice_id) REFERENCES date_time(invoice_id),
	vendor_number TEXT,
	CONSTRAINT fk_vendor FOREIGN KEY(vendor_number) REFERENCES vendor(vendor_number),
  item_number TEXT,
	CONSTRAINT fk_product FOREIGN KEY(item_number) REFERENCES product(item_number),
	store_number TEXT,
	CONSTRAINT fk_store FOREIGN KEY(store_number) REFERENCES store(store_number),
	pack INTEGER,
	bottle_volume_ml INTEGER,
	state_bottle_cost DOUBLE PRECISION,
	state_bottle_retail DOUBLE PRECISION,
	bottles_sold INTEGER,
	sale_dollars DOUBLE PRECISION,
	volume_sold_liters DOUBLE PRECISION,
	volume_sold_gallons DOUBLE PRECISION
);

INSERT INTO sales(invoice_id,
                  vendor_number,
                  item_number,
                  store_number,
                  pack,
                  bottle_volume_ml,
                  state_bottle_cost,
                  state_bottle_retail,
                  bottles_sold,
                  sale_dollars,
                  volume_sold_liters,
                  volume_sold_gallons)
SELECT
      dt.invoice_id,
      vn.vendor_number,
      pd.item_number,
      st.store_number,
      io.pack,
      io.bottle_volume_ml,
      io.state_bottle_cost,
      io.state_bottle_retail,
      io.bottles_sold,
      io.sale_dollars,
      io.volume_sold_liters,
      io.volume_sold_gallons
FROM iowa_drink_sales2 io
INNER JOIN date_time dt ON dt.invoice_id = io.invoice_and_item_number
INNER JOIN product pd ON pd.item_description = io.item_description
INNER JOIN store st ON st.store_name = io.store_name
INNER JOIN vendor vn ON vn.vendor_name = io.vendor_name
