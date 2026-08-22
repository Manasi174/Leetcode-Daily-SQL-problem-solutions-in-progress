--570 - Managers with at Least 5 Direct Reports (medium)
-- https://leetcode.com/problems/Managers-with-at-Least-5-Direct-Reports/ 

/* Write your T-SQL query statement below */
select a.name
from
(
    select e1.id, e1.name
    from Employee e1
    inner join Employee e2
    on e1.id = e2.managerId
    group by e1.id, e1.name
    having count(e2.managerId) >=5 
) a