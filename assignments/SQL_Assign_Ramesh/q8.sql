with memberdata as (
select a.customer_id,a.order_date,b.join_date,c.price,c.product_name
 from paradise.sales a
 left join paradise.members b
 on a.customer_id=b.customer_id
 join paradise.menu c
 on a.product_id=c.product_id
 where a.order_date<b.join_date)
 
 select customer_id,sum(price),count(distinct product_name)
 from memberdata
 group by customer_id

