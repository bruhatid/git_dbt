{{config(materialized="ephemeral")}}
select a.ship_postal_code, a.order_id ,a.mrp,b.quantity,b.offer_id ,b.mrp
from {{ref('data1')}} a
inner join {{ref('data2')}} b
on a.mrp = b.mrp
