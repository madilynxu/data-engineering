with
source as (
    select * from {{ source('jaffle_shop','orders') }}
)

SELECT
id as order_id,
customer as customer_id,
ordered_at as order_date,
subtotal,
tax_paid,
order_total
from source