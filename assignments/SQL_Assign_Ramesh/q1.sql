select a.customer_id, sum(b.price) as total_spent
  from paradise.sales as a
  join paradise.menu as b
  on a.product_id = b.product_id
  group by a.customer_id