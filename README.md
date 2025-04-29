## Dataset Description
1. **Orders.csv**
   - `order_id`: Unique ID for each order
   - `order_date`: Date the order was placed
   - `customer_id`: Unique ID for each customer

2. **Details.csv**
   - `order_id`: Linked to Orders table
   - `product_id`: ID of the product sold
   - `quantity`: Number of units ordered
   - `price`: Unit price of the product

**Insights**
Used SUM(quantity * price) to calculate monthly revenue
Used COUNT(DISTINCT order_id) to calculate order volume
Grouped results by year and month
Identified top-performing months by revenue
