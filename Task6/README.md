# Sales Trend Analysis Using Aggregations  
**Data Analyst Internship - Task 6**

## Objective  
Analyze monthly revenue and order volume from the `online_sales` dataset using SQL aggregation techniques. This task focuses on learning how to group data by time periods and analyze sales trends over months.

## Tools Used  
- MySQL / PostgreSQL / SQLite (SQL scripts compatible with all)  
- SQL Workbench or any SQL client for running queries  
- Python & Pandas (optional for CSV loading and result exporting)

## Dataset  
The dataset consists of an `online_sales` table with the following fields:  
- `order_id` (Unique identifier for each order)  
- `order_date` (Date when the order was placed)  
- `amount` (Order amount in currency)  
- `product_id` (Product identifier)

## Approach  

### Data Generation  
- Created the `online_sales` table.  
- Populated it with 50 sample rows of synthetic data using a stored procedure (MySQL) or manual inserts.  
- Randomized order dates within a full year (e.g., 2023), amounts between 10 and 510, and product IDs from 1 to 10.

### Analysis Query  
- Extracted year and month from `order_date` using `YEAR()` and `MONTH()` (or `EXTRACT()` depending on SQL dialect).  
- Used aggregate functions:  
  - `SUM(amount)` for total monthly revenue  
  - `COUNT(DISTINCT order_id)` for monthly order volume  
- Grouped data by year and month for aggregation.  
- Sorted results chronologically using `ORDER BY`.

### Filtering  
- Applied filters to limit data for specific time periods when necessary using `WHERE` clause.

# Author
Sanika
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
