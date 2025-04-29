CREATE DATABASE sales_analysis;
USE sales_analysis;
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT
);

CREATE TABLE Details (
    detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

SELECT
    YEAR(o.order_date) AS year,
    MONTH(o.order_date) AS month,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(d.quantity * d.price) AS total_revenue
FROM Orders o
JOIN Details d ON o.order_id = d.order_id
GROUP BY year, month
ORDER BY year, month;

SELECT
    YEAR(o.order_date) AS year,
    MONTH(o.order_date) AS month,
    SUM(d.quantity * d.price) AS total_revenue
FROM Orders o
JOIN Details d ON o.order_id = d.order_id
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;

