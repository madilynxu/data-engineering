with
orders as (
    select * from {{ ref('stg_jaffle_shop_order') }}
),

customer as (
    select * from {{ ref('stg_jaffle_shop_customers') }}
)

select *
from orders
left join customer
on orders.customer_id = customer.id