--Which item was purchased first by the customer after they became a member?
 with final as (
select a.*,b.customer_id as customerid,b.join_date,
rank() over (partition by a.customer_id order by order_date) as ranking,
c.product_name
 from paradise.sales a
 left join paradise.members b
 on a.customer_id=b.customer_id
 join paradise.menu c
 on a.product_id=c.product_id
 where a.order_date>=b.join_date
)
select customer_id,ranking,product_name from final where ranking=1
 



