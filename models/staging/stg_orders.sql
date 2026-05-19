select
    -- from orders
    o.orderid,
    o.orderdate,
    o.shipdate,
    o.ordercostprice,
    o.ordersellingprice,
    o.ordersellingprice - o.ordercostprice AS order_profit,

    -- from customer
    c.customername,
    c.segment,
    c.country,

    -- from product
    p.category,
    p.productid,
    p.productname,
    p.subcategory

FROM {{ ref('raw_orders') }} AS o
LEFT JOIN {{ ref('raw_customer') }} AS c
    ON o.customerid = c.customerid
LEFT JOIN {{ ref('raw_product') }} AS p
    ON o.productid = p.productid

