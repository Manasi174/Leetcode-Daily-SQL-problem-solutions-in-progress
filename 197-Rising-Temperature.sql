--197-Rising-Temperature (Easy - based on joins)
-- https://leetcode.com/problems/Rising-temperature/ 

/* Write your T-SQL query statement below */
SELECT a.id 
FROM
(
    Select w1.id, w1.recordDate, w1.temperature as temp1,
    DATEADD(day, -1, w2.recordDate) as prevRecordDate, w2.temperature as temp2
    From Weather w1
    inner join Weather w2
    on w1.recordDate = DATEADD(day, 1, w2.recordDate)
    where w1.temperature > w2.temperature
) a