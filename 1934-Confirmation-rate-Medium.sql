--1934-Confirmation rate (Medium)
--https://leetcode.com/problems/934-Confirmation-rate-(Medium)/ 

/* Write your T-SQL query statement below */

select a.user_id, a.confirmation_rate
from
(
    select s.user_id,
   ROUND(ISNULL(SUM(CASE WHEN action = 'confirmed' THEN 1.0 ELSE 0.0 END)
   / NULLIF(count(c.user_id), 0), 0), 2) as confirmation_rate
    from Signups s
    left join Confirmations c
    on s.user_id = c.user_id
    group by s.user_id
) a