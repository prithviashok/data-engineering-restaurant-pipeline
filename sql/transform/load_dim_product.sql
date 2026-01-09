INSERT INTO warehouse.dim_product (
    product_id,
    item_name,
    category,
    price
)

SELECT DISTINCT
item_id,
item_name,
category,
price
FROM raw.raw_menu;
