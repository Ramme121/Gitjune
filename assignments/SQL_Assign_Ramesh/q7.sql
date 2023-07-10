select a.customer_id,count(a.product_id) as items,sum(c.price) as totalspent

 from paradise.sales a
 left join paradise.members b
 on a.customer_id=b.customer_id
 join paradise.menu c
 on a.product_id=c.product_id
 where a.order_date<b.join_dateS
group by a.customer_id