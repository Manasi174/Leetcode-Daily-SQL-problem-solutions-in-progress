--1581-Customers-who-visited-but-did-not-make-any-transactions (Easy - based on joins)
-- https://leetcode.com/problems/Customers-who-visited-but-did-not-make-any-transactions/ 

/* Write your T-SQL query statement below */
select a.customer_id, a.count_no_trans 
from
(
    select v.customer_id, count(v.visit_id) as count_no_trans
    from visits v
    left join Transactions t
    on v.visit_id = t.visit_id
    where transaction_id is null
    group by customer_id
) a

