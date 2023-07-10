--What is the most purchased item on the menu and how many times was it purchased by all customers?

 
select b.product_name, count(*)
from paradise.sales a
join paradise.menu b
on a.product_id = b.product_id
group by b.product_name