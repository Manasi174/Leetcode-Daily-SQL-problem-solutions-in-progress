--180-Consecutive numbers -- Medium
-- https://leetcode.com/problems/Consecutive_Numbers_Medium/


/* Write your T-SQL query statement below */

select distinct z.ConsecutiveNums
from 
(
    select case when a.num = b.num and b.num = c.num
    then (a.num) end as ConsecutiveNums 
    from Logs a
    inner join Logs b
    on a.id+1 = b.id
    inner join Logs c
    on a.id+2 = c.id
    group by a.num, b.num, c.num
) z
where z.ConsecutiveNums is not null