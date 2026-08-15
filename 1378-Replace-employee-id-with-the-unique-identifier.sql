--1378 Replace employee id with the unique identifier (basic joins - easy)
-- https://leetcode.com/problems/Replace-employee-id-with-the-unique-identifier/ 

/* Write your T-SQL query statement below */
SELECT case when eu.unique_id is null then null else eu.unique_id end as unique_id, e.name
FROM Employees e
left join EmployeeUNI eu
on e.id = eu.id