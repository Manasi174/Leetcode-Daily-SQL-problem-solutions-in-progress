 -- 1873. Recyclable and Low Fat Products (Easy) 
 -- https://leetcode.com/problems/recyclable-and-low-fat-products/ 

 /* Write your T-SQL query statement below */ 
 SELECT a.product_id 
 FROM 
 ( 
    SELECT product_id 
    FROM Products 
    WHERE (low_fats = 'Y') AND (recyclable = 'Y') 
 ) a