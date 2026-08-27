-- 1211 Queries quality and percentage (easy)
-- https://leetcode.com/problems/Queries-quality-and-percentage/ 

/* Write your T-SQL query statement below */

select a.query_name, a.quality, a.poor_query_percentage
from
(
    select q.query_name, round(avg(q.rating * 1.0/q.position), 2) as quality,
    Round(sum(case when q.rating < 3 then 1 else 0 end) * 100.00/ (count(rating)), 2) as poor_query_percentage
    from Queries q
    group by q.query_name
) a
