select
    customername,
    segment,
    country,
    sum(order_profit) as profitbycustomer
from {{ ref('stg_orders') }}
group by
    customername,
    segment,
    country