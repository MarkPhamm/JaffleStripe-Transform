with orders as (
    select * from {{ref('stg_tpch_orders')}}
),

order_item_summary as ( 
    select * from {{ref('int_order_items_summary')}} 
)

select

    orders.*,
    order_item_summary.gross_item_sales_amount,
    order_item_summary.item_discount_amount

from
     orders
join
    order_item_summary
        on orders.order_key = order_item_summary.order_key
order by order_date
