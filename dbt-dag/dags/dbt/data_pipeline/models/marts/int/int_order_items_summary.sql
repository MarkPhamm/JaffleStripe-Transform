
with int_order_items as (
    
    select * from {{ ref('int_order_items') }}
)
select 
    order_key,
    sum(extended_price) as gross_item_sales_amount,
    sum(item_discount_amount) as item_discount_amount
from
    int_order_items
group by
    order_key