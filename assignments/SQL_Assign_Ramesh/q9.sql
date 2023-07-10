with points as (
select a.customer_id,a.order_date,c.product_name,c.price,
case when product_name='sushi' then 2*c.price
else c.price end as newprice
 from paradise.sales a
 join paradise.menu c
 on a.product_id=c.product_id
)
select customer_id,sum(newprice)*10 from points
group by customer_id
