--1193-Monthly transactions I (Medium)
-- https://leetcode.com/problems/Monthly-transactions-I/ 

/* Write your T-SQL query statement below */

Select a.month, a.country, a.trans_count, a.approved_count, a.trans_total_amount, a.approved_total_amount
from
(
    select FORMAT(trans_date, 'yyyy-MM') as 'month', country, count(id) as trans_count, sum(case when state = 'approved' then 1 else 0 end) as approved_count, sum(amount) as trans_total_amount, 
    SUM(case when state = 'approved' then (amount) Else 0 end) as 'approved_total_amount'
    From Transactions 
    group by FORMAT(trans_date, 'yyyy-MM'), country
) a