CREATE DATABASE vrinda_db;
SHOW DATABASES;
USE vrinda_db;
SELECT * FROM sales LIMIT 10;
# 1. Total Revenue
SELECT ROUND(SUM(amount),2) AS total_revenue
FROM sales;
# 2.Total Orders
SELECT COUNT(*) AS total_orders
FROM sales;
# 3.Average Order Value
SELECT ROUND(AVG(amount),2) AS avg_order_value
FROM sales;
# 4.Top 10 States
SELECT ship_state,
       ROUND(SUM(amount),2) AS revenue
FROM sales
GROUP BY ship_state
ORDER BY revenue DESC
LIMIT 10;
# 5.Sales by Gender
SELECT gender,
       ROUND(SUM(amount),2) AS revenue
FROM sales
GROUP BY gender;
# 6.Top Product Categories
SELECT category,
       ROUND(SUM(amount),2) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;
# 7. Monthly Sales Trend
SELECT month,
       ROUND(SUM(amount),2) AS revenue
FROM sales
GROUP BY month
ORDER BY revenue DESC;
# 8. Order Status Analysis
SELECT status,
       COUNT(*) AS total_orders
FROM sales
GROUP BY status