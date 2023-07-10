create database challenge;
use challenge;


CREATE TABLE sales (
  customer_id VARCHAR(1),
  order_date DATE,
  product_id INTEGER
);

INSERT INTO sales
  (customer_id, order_date, product_id)
VALUES
  ('A', '2021-01-01', '1'),
  ('A', '2021-01-01', '2'),
  ('A', '2021-01-07', '2'),
  ('A', '2021-01-10', '3'),
  ('A', '2021-01-11', '3'),
  ('A', '2021-01-11', '3'),
  ('B', '2021-01-01', '2'),
  ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-07', '3');
 

CREATE TABLE menu (
  product_id INTEGER,
  product_name VARCHAR(5),
  price INTEGER
);

INSERT INTO menu
  (product_id, product_name, price)
VALUES
  ('1', 'sushi', '10'),
  ('2', 'curry', '15'),
  ('3', 'ramen', '12');
  

CREATE TABLE members (
  customer_id VARCHAR(1),
  join_date DATE
);

INSERT INTO members
  (customer_id, join_date)
VALUES
  ('A', '2021-01-07'),
  ('B', '2021-01-09');
  
 --- Q1. im nit getting c customer value, why? 
SELECT customer_id, 
  (SELECT SUM(price) FROM sales 
   JOIN menu ON sales.product_id = menu.product_id 
   WHERE sales.customer_id = members.customer_id) AS total_amount
FROM members;


--2. How many days has each customer visited the restaurant?

SELECT customer_id,(SELECT COUNT(Distinct order_date)
   FROM sales WHERE customer_id = members.customer_id) AS visited_days
FROM members;

--3. What was the first item from the menu purchased by each customer?

SELECT s.customer_id, MIN(m.product_name) AS first_item
FROM sales AS s
JOIN menu AS m ON s.product_id = m.product_id
GROUP BY s.customer_id;

--4. What is the most purchased item on the menu and how many times was it purchased by all customers?

SELECT m.product_name AS most_purchased_item, COUNT(*) AS purchase_count
FROM sales AS s
JOIN menu AS m ON s.product_id = m.product_id
GROUP BY m.product_name
ORDER BY purchase_count DESC
LIMIT 1;

--5. Which item was the most popular for each customer?

SELECT s.customer_id, m.product_name AS most_popular_item
FROM sales AS s
JOIN menu AS m ON s.product_id = m.product_id
WHERE (
  SELECT COUNT(*) 
  FROM sales 
  WHERE customer_id = s.customer_id 
  GROUP BY product_id 
  ORDER BY COUNT(*) DESC 
  LIMIT 1
) = (
  SELECT COUNT(*) 
  FROM sales 
  WHERE customer_id = s.customer_id 
  AND product_id = s.product_id 
  GROUP BY product_id
)
GROUP BY s.customer_id;


SET sql_mode = '';



SELECT customer_id, product_name AS most_popular_item
FROM (
  SELECT s.customer_id, m.product_name,
         RANK() OVER (PARTITION BY s.customer_id ORDER BY COUNT(*) DESC) AS item_rank
  FROM sales AS s
  JOIN menu AS m ON s.product_id = m.product_id
  GROUP BY s.customer_id, m.product_name
) AS t
WHERE item_rank = 1;

--6. Which item was purchased first by the customer after they became a member?

SELECT mbr.customer_id, m.product_name AS first_purchased_item
FROM members AS mbr
LEFT JOIN sales AS s ON mbr.customer_id = s.customer_id
LEFT JOIN menu AS m ON s.product_id = m.product_id
WHERE s.order_date = (
  SELECT MIN(order_date)
  FROM sales
  WHERE customer_id = mbr.customer_id
    AND order_date >= mbr.join_date
)
GROUP BY mbr.customer_id;


--7. Which item was purchased just before the customer became a member?


SELECT s.customer_id, m.product_name AS last_purchased_item
FROM sales AS s
JOIN members AS mbr ON s.customer_id = mbr.customer_id
JOIN menu AS m ON s.product_id = m.product_id
WHERE s.order_date = (
  SELECT MAX(order_date)
  FROM sales
  WHERE customer_id = s.customer_id
    AND order_date < mbr.join_date
)
GROUP BY s.customer_id;


--8. What is the total items and amount spent for each member before they became a member?
SELECT mbr.customer_id, 
       COUNT(s.product_id) AS total_items,
       SUM(m.price) AS total_amount
FROM members AS mbr
JOIN sales AS s ON mbr.customer_id = s.customer_id
JOIN menu AS m ON s.product_id = m.product_id
WHERE s.order_date < mbr.join_date
GROUP BY mbr.customer_id;

--9.  If each $1 spent equates to 10 points and sushi has a 2x points multiplier - 
--how many points would each customer have?

SELECT s.customer_id,
       SUM(CASE WHEN m.product_name = 'sushi' THEN (10 * m.price * 2)
                ELSE (10 * m.price)
           END) AS total_points
FROM sales AS s
JOIN menu AS m ON s.product_id = m.product_id
GROUP BY s.customer_id;

--10. In the first week after a customer joins the program (including their join date) they earn 
2x points on all items, not just sushi - how many points do customer A and B have at the end of January?


SELECT s.customer_id,
       SUM(CASE WHEN (s.order_date >= mbr.join_date AND s.order_date <= DATE_ADD(mbr.join_date, INTERVAL 1 WEEK))
                THEN (10 * m.price * 2)
                ELSE (10 * m.price)
           END) AS total_points
FROM sales AS s
JOIN menu AS m ON s.product_id = m.product_id
JOIN members AS mbr ON s.customer_id = mbr.customer_id
WHERE s.order_date >= '2021-01-01' AND s.order_date <= '2021-01-31'
  AND (s.customer_id = 'A' OR s.customer_id = 'B')
GROUP BY s.customer_id;











