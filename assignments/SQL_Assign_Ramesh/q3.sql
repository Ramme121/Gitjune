--What was the first item from the menu purchased by each customer?

 with output as(
select a.customer_id, b.product_name,
rank() over (partition by customer_id order by order_date) as ranking
from paradise.sales a
join paradise.menu b
on a.product_id = b.product_id)
select * from output where ranking = 1


 
 
 
 
 
 