-- Query 1: Total orders by customer
SELECT 
  c.name AS customer_name,
  COUNT(o.order_id) AS total_orders
FROM 
  customers c
JOIN 
  orders o ON c.customer_id = o.customer_id
GROUP BY 
  c.name;


-- Query 2: Orders per city
SELECT 
  c.city,
  COUNT(o.order_id) AS total_orders
FROM 
  customers c
JOIN 
  orders o ON c.customer_id = o.customer_id
GROUP BY 
  c.city
ORDER BY 
  total_orders DESC;


-- Query 3: Average delivery time per order (in minutes)
SELECT 
  o.order_id,
  EXTRACT(EPOCH FROM (o.delivery_time - o.order_time))/60 AS delivery_minutes
FROM 
  orders o;


-- Query 4: Top 3 most ordered items
SELECT 
  item_name,
  COUNT(*) AS times_ordered
FROM 
  order_items
GROUP BY 
  item_name
ORDER BY 
  times_ordered DESC
LIMIT 3;


-- Query 5: Restaurant revenue earned
SELECT 
  r.name AS restaurant_name,
  SUM(oi.price * oi.quantity) AS total_revenue
FROM 
  order_items oi
JOIN 
  restaurants r ON oi.restaurant_id = r.restaurant_id
GROUP BY 
  r.name
ORDER BY 
  total_revenue DESC;


-- Query 6: Delivery partner with most deliveries
SELECT 
  dp.name AS partner_name,
  COUNT(o.order_id) AS total_deliveries
FROM 
  orders o
JOIN 
  delivery_partners dp ON o.partner_id = dp.partner_id
GROUP BY 
  dp.name
ORDER BY 
  total_deliveries DESC;
