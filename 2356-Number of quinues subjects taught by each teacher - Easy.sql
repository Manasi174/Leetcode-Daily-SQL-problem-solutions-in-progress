--2356 - Number of unique subjects taught by each teacher
-- https://leetcode.com/problems/Number-of-unique-subjects-taught-by-each-teacher/ 

/* Write your T-SQL query statement below */

Select z.teacher_id, z.cnt
from
(
    select a.teacher_id, count(distinct a.subject_id) as cnt
    from Teacher a
    group by a.teacher_id
) z