--596 - Classes with at least 5 students (Easy)
-- https://leetcode.com/problems/Classes-with-at-least-5-students-Easy/ 

/* Write your T-SQL query statement below */

select a.class
from
(
    select count(distinct student) as count, class
    from Courses
    group by class
    having count(distinct student) >= 5

) a
