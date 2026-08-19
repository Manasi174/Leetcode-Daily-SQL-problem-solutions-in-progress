--577-Employee-bonus (Easy)
-- https://leetcode.com/problems/Employee-bonus/ 

/* Write your T-SQL query statement below */
Select a.name, a.bonus
From
(
Select e.empid, e.name, b.bonus
From Employee e
Left join bonus b
On e.empid = b.empid
Where (b.bonus is null or b.bonus < 1000)
) a
