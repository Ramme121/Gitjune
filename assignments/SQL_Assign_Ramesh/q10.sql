with finalpoints as (
select a.customer_id,a.order_date,c.product_name,c.price,
case when product_name='sushi' then 2*c.price
when a.order_date between b.join_date 
and (b.join_date+ interval 6 day) then 2*c.price
else c.price end as newprice
 from paradise.sales a
 join paradise.menu c
 on a.product_id=c.product_id
  join paradise.members b
 on a.customer_id=b.customer_id
 where a.order_date<='2021-01-31'
)
select customer_id,sum(newprice)*10 from finalpoints
group by customer_id
