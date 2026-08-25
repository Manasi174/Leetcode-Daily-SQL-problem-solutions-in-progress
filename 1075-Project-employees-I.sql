--1075 Project employees I (Easy)
-- https://leetcode.com/problems/Project-Employees-I/ 

/* Write your T-SQL query statement below */

Select a.project_id, a.average_years
from
(
    select p.project_id, 
    Round(sum(e.experience_years)/ISNULL(count(e.employee_id) * 1.0,0), 2) as average_years
    from Project p
    left join Employee e
    on p.employee_id = e.employee_id
    group by p.project_id
) a