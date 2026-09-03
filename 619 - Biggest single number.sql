--619 Biggest single number - Easy
-- https://leetcode.com/problems/Biggest-single-number/


/* Write your T-SQL query statement below */

select max(a.num) as num
from
(
    select num, count(num) as num_count
    from MyNumbers
    group by num
    having count(num) =1
) a