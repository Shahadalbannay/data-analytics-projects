# Sales & Customer Performance Analysis (SQL)

## Overview
This project demonstrates the use of SQL to analyze sales, customer, and product data in order to generate meaningful business insights. The analysis focuses on understanding customer behavior, sales trends, and product performance using structured queries and relational database concepts.

The project was built using SQLite and executed through SQLiteStudio.

---

## Objectives
- Analyze overall sales performance
- Identify top-performing customers
- Understand sales trends over time
- Evaluate product performance
- Distinguish between repeat and one-time customers

---

## Database Structure
The database consists of three main tables:

### 1. Customers
- `customer_id` (INTEGER, Primary Key)
- `customer_name` (TEXT)
- `country` (TEXT)

### 2. Orders
- `order_id` (INTEGER, Primary Key)
- `customer_id` (INTEGER, Foreign Key)
- `order_date` (TEXT, ISO format: YYYY-MM-DD)
- `total_amount` (REAL)

### 3. Order_Items
- `order_item_id` (INTEGER, Primary Key)
- `order_id` (INTEGER, Foreign Key)
- `product` (TEXT)
- `quantity` (INTEGER)
- `price` (REAL)

Foreign key constraints were enforced to maintain referential integrity between tables.

---

## Key Business Questions Answered
- What is the total sales revenue?
- Which customers generate the highest revenue?
- How do sales trends change over time?
- Which products contribute most to revenue?
- Which customers are repeat buyers?

---

## SQL Concepts Used
- JOINs (INNER JOIN)
- GROUP BY & HAVING clauses
- Aggregate functions (SUM, COUNT)
- Window functions (RANK)
- Date handling using ISO-formatted TEXT fields
- Foreign key constraints

---

## Tools & Technologies
- SQLite
- SQLiteStudio
- SQL

---

## Files in This Repository
- `sales_analysis.db` – SQLite database file
- `analysis_queries.sql` – SQL queries used for analysis
- `database_schema.sql` – Database schema and data export
- `README.md` – Project documentation

---

## Key Insights
- A small number of customers contribute a significant portion of total revenue.
- Contract frequency and repeat purchases strongly impact customer value.
- Certain products consistently outperform others in revenue contribution.
- Storing dates in ISO format allows accurate sorting and trend analysis in SQLite.

---

## Author
**Shahad Albannay**  
Management Information Systems (MIS) Graduate  
Aspiring Data Analyst / BI Analyst / Market Intelligence Analyst
