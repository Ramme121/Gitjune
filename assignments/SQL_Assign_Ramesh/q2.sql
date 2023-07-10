--How many days has each customer visited the restaurant?

select customer_id, count(distinct(order_date)) as Visited_days
from paradise.sales 
group by customer_id

