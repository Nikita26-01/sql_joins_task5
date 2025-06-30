# Task 5: SQL Joins (INNER, LEFT, RIGHT, FULL)

##  Objective
To learn how to combine data from multiple tables using SQL JOINs.

##  Tools Used
- DB Browser for SQLite / MySQL Workbench

## Files Included
- `task5.sql` — SQL script containing table creation, data insertion, and join queries.

## Tables Created

### Customers
- `CustomerID` (INT, Primary Key)
- `CustomerName` (VARCHAR)
- `City` (VARCHAR)

### Orders
- `OrderID` (INT, Primary Key)
- `OrderDate` (DATE)
- `CustomerID` (INT, Foreign Key to Customers)
- `Amount` (DECIMAL)

##  Sample Data

**Customers**
- Amit,Neha,Rahul,Priya

**Orders**
- Order IDs 101–104 are linked to customers
- Order 105 has no customer

## SQL JOIN Queries

### INNER JOIN
Returns customers who placed at least one order.

### LEFT JOIN
Returns all customers and their orders (NULL if none).

### RIGHT JOIN
Returns all orders and their customers (NULL if no customer).

### FULL OUTER JOIN
Returns all customers and all orders, showing NULL where no match exists.

## Submission Note
This repository includes everything required per the Task 5 for the SQL Developer Internship.
