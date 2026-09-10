--610 Triangle Judgement -- advanced select and joins -- Easy
-- https://leetcode.com/problems/Triangle-Judgement/

/* Write your T-SQL query statement below */

select a.x, a.y, a.z, a.triangle
from
(
    select x, y, z, 
    case when (x + y) > z
        and (y + z) > x
        and (x + z) > y then 'Yes' else 'No' End triangle
    From Triangle
) a