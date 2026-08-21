--620-Not-boring-movies
--https://leetcode.com/problems/not-boring-movies/

/* Write your T-SQL query statement below */

Select id, movie, description, rating
From Cinema
Where (id % 2 <> 0) and (description <> 'boring')
Order by rating desc
