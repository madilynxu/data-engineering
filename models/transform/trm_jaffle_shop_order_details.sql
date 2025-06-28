{{ config(materialized="view") }}

with
orders as (
    select * from ((ref('stg_jaffle_shop_orders')))
),

customer as (
    select * from ((ref('stg_jaffle_shop_customers')))
)

select *
from orders
left join customers
on orders.order_id = customers.customer_id