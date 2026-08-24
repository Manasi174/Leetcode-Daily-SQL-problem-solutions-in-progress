--1251--Average selling price (Easy)
-- https://leetcode.com/problems/Average-Selling-Price/ 

/* Write your T-SQL query statement below */
Select a.product_id, a.average_price
From
(
    Select P.product_id, 
    ISNULL(ROUND(Sum(Case when U.purchase_date between P.start_date and P.end_date then U.units * P.price end)/ NULLIF(sum(Case when U.purchase_date between P.start_date and P.end_date then U.units * 1.0 end), 0),2),0) as Average_price
    from Prices P
    Left join UnitsSold U
    on U.product_id = P.product_id
    group by P.product_id
) a