--1141 -- User activities for the past 30 days I
-- https://leetcode.com/problems/User-activities-for-the-past-30-days-I/ 

/* Write your T-SQL query statement below */

select a.day, a.active_users
from
(
    select activity_date as day, count(distinct user_id) as active_users
    from Activity
    where activity_date between '2019-06-28' and '2019-07-27'
    group by activity_date
    
) a