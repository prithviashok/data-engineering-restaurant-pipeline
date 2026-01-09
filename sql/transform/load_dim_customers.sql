INSERT INTO warehouse.dim_customer (
    customer_id,
    customer_name,
    city
)
SELECT DISTINCT
    customer_id,
    customer_name,
    city
FROM raw.raw_customers;