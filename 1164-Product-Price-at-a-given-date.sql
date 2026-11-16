--1164 -- Product price at a given date -- based on the left joins -- Medium difficulty level
-- https://leetcode.com/problems/Product_price_at_a_given_date/

SELECT p.product_id, IFNULL(p2.new_price, 10) AS price
FROM (SELECT DISTINCT product_id FROM Products) p
LEFT JOIN (
    SELECT product_id, MAX(change_date) AS latest_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
) p1 ON p.product_id = p1.product_id
LEFT JOIN Products p2 
    ON p1.product_id = p2.product_id 
    AND p1.latest_date = p2.change_date
