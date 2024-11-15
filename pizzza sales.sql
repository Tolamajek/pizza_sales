SELECT *
FROM pizza_sales; 

SELECT SUM(total_price) as total_revenue
FROM pizza_sales;

SELECT SUM(total_price)/COUNT(DISTINCT order_id) as Avg_order_value
FROM pizza_sales;

SELECT SUM(quantity) as total_pizza_sold
FROM pizza_sales;

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales;

SELECT SUM(quantity)/ COUNT(DISTINCT order_id) as Avg_pizza_per_order
FROM pizza_sales;

SELECT DATE_FORMAT(order_date,'%W') as order_day, COUNT(DISTINCT order_id) as total_orders
FROM pizza_sales
GROUP BY order_day;

SELECT EXTRACT(HOUR FROM order_time) as order_hours, COUNT(DISTINCT order_id) as total_orders
FROM pizza_sales
GROUP BY order_hours;

SELECT pizza_size, CAST(sum(total_price) * 100/ (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) PCT
FROM pizza_sales 
GROUP BY pizza_size
ORDER BY PCT DESC;

SELECT pizza_category, SUM(quantity) as Total_Pizzas_sold
FROM pizza_sales
GROUP BY pizza_category;

SELECT pizza_name, SUM(quantity) as total_pizza_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_pizza_sold DESC
LIMIT 5;

SELECT pizza_name, SUM(quantity) as total_pizza_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_pizza_sold 
LIMIT 5;
