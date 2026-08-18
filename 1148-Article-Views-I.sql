-- 1148. Article Views I (Easy) 
 -- https://leetcode.com/problems/Article-Views-I/ 

 /* Write your T-SQL query statement below */  

Select a.id
From
(
Select distinct author_id as id
From Views
where author_id = viewer_id
Group By author_id
having count(article_id) >= 1

) a
