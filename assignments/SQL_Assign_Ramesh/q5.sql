--Which item was the most popular for each customer?

with final as(
select a.customer_id, b.product_name, count(*) as total
from paradise.sales a
join paradise.menu b
on a.product_id=b.product_id
group by a.customer_id, b.product_name)
select customer_id, product_name, total,
rank() over (partition by customer_id order by total desc) as ranking
from final





--Which item was the most popular for each customer?

with final as(
select a.customer_id, b.product_name, count(*) as total
from paradise.sales a
join paradise.menu b
on a.product_id=b.product_id
group by a.customer_id, b.product_name)
select customer_id, product_name, total,
rank() over (partition by customer_id order by total desc) as ranking
from final
 



