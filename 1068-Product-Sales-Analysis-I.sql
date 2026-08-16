--1068-Product sales analysis I
-- https://leetcode.com/problems/Product-Sales-Analysis-I/ 

/* Write your T-SQL query statement below */

Select a.product_name, a.year, a.price
from
(
    select p.product_id, p.product_name, s.year,s.price
    From Product p
    inner join Sales s
    on p.product_id = s.product_id
) a