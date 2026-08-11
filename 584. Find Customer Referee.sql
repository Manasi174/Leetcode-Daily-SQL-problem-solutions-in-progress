--584. Find Customer Referee
--https://leetcode.com/problems/Find_customer_referee/

 /* Write your T-SQL query statement below */ 

Select name 
From Customer
Where (referee_id is null) or (referee_id <> 2)

