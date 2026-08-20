--1280-Students and examinations (Easy)
-- https://leetcode.com/problems/students-and-examinations/ 

/* Write your T-SQL query statement below */
select a.student_id, a.student_name, a.subject_name, a.attended_exams
from
(
    select students.student_id, student_name, Subjects.subject_name, count(Examinations.subject_name) as attended_exams
    from Students 
    cross join Subjects
    left join Examinations
    on students.student_id = Examinations.student_id
    and Subjects.subject_name = Examinations.subject_name
    group by students.student_id, student_name, Subjects.subject_name
) a
Order by a.student_id, a.subject_name