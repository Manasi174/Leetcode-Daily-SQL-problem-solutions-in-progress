--1204 -- Last person to fit in the bus -- Medium level
-- -- https://leetcode.com/problems/Last_person_to_fit_in_the_bus/

/* Write your T-SQL query statement below */

select top 1 a.person_name
from
(
    select turn, person_name,
    sum(weight) over (order by turn) as total_weight
    from Queue
    
) a
where a.total_weight <= 1000
order by a.turn desc
