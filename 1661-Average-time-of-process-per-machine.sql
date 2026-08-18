--1661 - Average-time-of-process-per-machine (Easy)
-- https://leetcode.com/problems/Average-time-of-process-per-machine/ 

/* Write your T-SQL query statement below */

select a.machine_id, ROUND(avg(a.processing_time),3) as processing_time
from
(
    select a1.machine_id, a1.process_id, 
    (a2.timestamp - a1.timestamp) as processing_time
    from Activity a1
    inner join Activity a2
    on a1.machine_id = a2.machine_id
    and a1.process_id = a2.process_id
    and a1.activity_type = 'start'
    and a2.activity_type = 'end'
) a
group by machine_id


