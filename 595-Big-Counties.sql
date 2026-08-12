--595. Big Countries (Easy)
-- https://leetcode.com/problems/Big-countries/ 


 /* Write your T-SQL query statement below */ 
 
Select a.name, a.population, a.area
From 
(
Select name, population, area
From World
Where (area >= 3000000 or population >= 25000000)
) a