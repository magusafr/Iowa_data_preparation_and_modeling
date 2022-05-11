CREATE TABLE IF NOT EXISTS date_time(
    invoice_id VARCHAR(100) PRIMARY KEY,
	date date,
    day_of_week VARCHAR(15),
	calender_month INTEGER,
	calender_quarter INTEGER,
	calender_year VARCHAR(5)
);

INSERT INTO date_time(invoice_id, date, day_of_week, calender_month, calender_quarter, calender_year)
SELECT invoice_id, date, day_of_week, calender_month, calender_quarter, calender_year
FROM (
		SELECT
			invoice_and_item_number AS invoice_id,
			date,
			to_char(date, 'Day') AS day_of_week,
			EXTRACT(MONTH FROM date) AS calender_month,
			EXTRACT(QUARTER FROM date) AS calender_quarter,
			EXTRACT(YEAR FROM date) AS calender_year
		 FROM iowa_drink_sales2
	 ) AS date_dim
