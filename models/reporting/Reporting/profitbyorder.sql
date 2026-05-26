select
    productid,
    productname,
    subcategory,
    ordercostprice,
    ordersellingprice,
    sum(order_profit) as profit 
from {{ ref('stg_orders') }}
group by
    productid,
    productname,
    subcategory,
    ordercostprice,
    ordersellingprice