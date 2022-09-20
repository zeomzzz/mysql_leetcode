# Write your MySQL query statement below
SELECT v.customer_id
     , COUNT(CASE WHEN t.amount IS NULL THEN v.customer_id END) count_no_trans
FROM Visits v
     LEFT JOIN Transactions t ON v.visit_id = t.visit_id
GROUP BY v.customer_id
HAVING count_no_trans > 0