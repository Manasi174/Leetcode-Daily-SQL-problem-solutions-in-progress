--1045-Customers-who-bought-all-products.sql -- Medium
-- https://leetcode.com/problems/Customers-who-bought-all-products/


/* Write your T-SQL query statement below */

select c.customer_id
from Customer c
group by c.customer_id
having count(distinct c.product_key) = (select count(*) from Product)