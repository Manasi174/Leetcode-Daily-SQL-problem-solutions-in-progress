--1683. Invalid Tweets (Easy)
-- https://leetcode.com/problems/Invalid-Tweets/ 

 /* Write your T-SQL query statement below */ 
select a.tweet_id 
from 
(
select tweet_id
from Tweets
WHERE LEN(content) > 15
) a 
