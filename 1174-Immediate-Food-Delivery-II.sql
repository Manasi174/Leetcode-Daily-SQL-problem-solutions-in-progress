--1174 Immediate food delivery II (Medium level)
-- https://leetcode.com/problems/Immediate-food-delivery-II-Medium-level/ 


/* Write your T-SQL query statement below */

WITH CTE_Delivery AS
(select 
d1.delivery_id,
d1.customer_id,
d1.order_date,
d1.customer_pref_delivery_date,
rank() over (partition by d1.customer_id order by order_date asc) as rn
from delivery d1
)
select round(sum(case when order_date = customer_pref_delivery_date then 1 else 0 end) * 100.0 /count(delivery_id), 2) as immediate_percentage
from CTE_Delivery
where rn = 1 