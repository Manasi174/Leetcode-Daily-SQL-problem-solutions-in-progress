--1070-Product-Sales-Analysis-III-Medium
-- https://leetcode.com/problems/Product-Sales-Analysis-III-Medium/

/* Write your T-SQL query statement below */

with cte_sales as
(
select product_id, year, rank() over (partition by product_id order by year asc) rnk, quantity, price
from Sales
)
select product_id, year as first_year, quantity, price
from cte_sales
where rnk = 1