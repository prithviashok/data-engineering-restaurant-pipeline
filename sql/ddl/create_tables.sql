-- ============================
-- SCHEMA CREATION
-- ============================

CREATE SCHEMA IF NOT EXISTS raw;
CREATE SCHEMA IF NOT EXISTS warehouse;

-- ============================
-- RAW TABLES (OLTP / INGESTION)
-- ============================

CREATE TABLE IF NOT EXISTS raw.raw_orders(
order_id INT PRIMARY KEY,
order_timestamp TIMESTAMP NOT NULL,
customer_id INT,
payment_type VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS raw.raw_order_items (
order_item_id INT PRIMARY KEY,
order_id INT NOT NULL,
item_id INT NOT NULL,
quantity INT NOT NULL
);

CREATE TABLE IF NOT EXISTS raw.raw_menu (
item_id INT PRIMARY KEY,
item_name VARCHAR(100),
category VARCHAR(50),
price NUMERIC(10,2)
);

CREATE TABLE IF NOT EXISTS raw.raw_customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
city VARCHAR(50)
);

-- ============================
-- WAREHOUSE TABLES (OLAP)
-- ============================

CREATE TABLE IF NOT EXISTS warehouse.dim_date (
    date_id INT PRIMARY KEY,
    date DATE,
    year INT,
    month INT,
    day INT,
    weekday VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS warehouse.dim_customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS warehouse.dim_product (
    product_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10,2)
);

CREATE TABLE IF NOT EXISTS warehouse.fact_sales (
    sales_id SERIAL PRIMARY KEY,
    order_id INT,
    date_id INT,
    customer_id INT,
    product_id INT,
    quantity INT,
    total_amount NUMERIC(10,2)
);

SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_schema IN ('raw', 'warehouse');
