INSERT INTO warehouse.dim_date (
    date_id,
    date,
    year,
    month,
    day
)

SELECT DISTINCT
TO_CHAR(order_timestamp::timestamp, 'YYYYMMDD')::INT AS date_id,
order_timestamp::date AS date,
EXTRACT(YEAR FROM order_timestamp::date),
EXTRACT(MONTH FROM order_timestamp::date),
EXTRACT(DAY FROM order_timestamp::date)
FROM raw.raw_orders;

