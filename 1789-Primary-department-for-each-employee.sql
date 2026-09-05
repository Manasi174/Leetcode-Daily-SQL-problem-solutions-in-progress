--1789 Primary department for each employee - Advanced select and joins - easy
-- https://leetcode.com/problems/Primary-department-for-each-employee-Advanced-select-and-joins-easy/


/* Write your T-SQL query statement below */

select a.employee_id, a.department_id
from
(
select employee_id, department_id, primary_flag, 
count(*) over (partition by employee_id) as cnt
from Employee
) a
where (cnt = 1) or (cnt > 1 and primary_flag = 'Y')
