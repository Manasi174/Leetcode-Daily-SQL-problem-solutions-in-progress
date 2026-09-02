--1729 Find followers count - Easy
-- https://leetcode.com/problems/Find-followers-count-Easy/ 

/* Write your T-SQL query statement below */

select a.user_id, a.followers_count
from
(
    select user_id, count(follower_id) as followers_count
    from Followers
    group by user_id
) a