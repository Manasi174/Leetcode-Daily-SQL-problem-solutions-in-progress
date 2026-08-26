--1633 Percentage of users attended a contest (based on joins - Easy)
-- https://leetcode.com/problems/Percentage-of-users-attended-a-contest/ 

/* Write your T-SQL query statement below */

Select b.contest_id, b.percentage
from
(
    select a.contest_id, 
    Round(count(a.user_id) * 100.0/ (select count(u.user_id) from Users u), 2) as percentage
    from Register a
    group by a.contest_id
   
) b
 order by b.percentage desc, b.contest_id asc
