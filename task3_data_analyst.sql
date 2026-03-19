create database task3_data_analyst;
use task3_data_analyst;
CREATE TABLE sales (
    order_id VARCHAR(50),
    order_date DATE,
    customer_name VARCHAR(100),
    category VARCHAR(50),
    region VARCHAR(50),
    sales DECIMAL(10,2),
    profit DECIMAL(10,2)
);
select * from sales;
SELECT * FROM sales LIMIT 10;
SELECT COUNT(*) FROM sales;
SELECT * 
FROM sales
WHERE category = 'Technology';
SELECT * 
FROM sales
WHERE region = 'West';
SELECT * 
FROM sales
ORDER BY sales DESC;
SELECT * 
FROM sales
ORDER BY profit ASC;
SELECT SUM(sales) AS total_sales FROM sales;
SELECT AVG(profit) AS avg_profit FROM sales;
SELECT COUNT(*) FROM sales;
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category;
SELECT region, SUM(sales) 
FROM sales
GROUP BY region;
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category
HAVING total_sales > 100000;
SELECT * 
FROM sales
WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31';
SELECT * 
FROM sales
WHERE customer_name LIKE 'A%';
SELECT customer_name, SUM(sales) AS total_spent
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;
