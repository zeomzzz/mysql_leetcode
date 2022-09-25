# Write your MySQL query statement below
WITH Child AS (
SELECT p_id
     , COUNT(*) child_cnt
FROM Tree
GROUP BY p_id
)

SELECT Tree.id
     , CASE
            WHEN Tree.p_id IS NULL THEN 'Root'
            WHEN Tree.p_id IS NOT NULL AND Child.child_cnt IS NOT NULL THEN 'Inner'
            WHEN Tree.p_id IS NOT NULL AND Child.child_cnt IS NULL THEN 'Leaf'
        END type
FROM Tree
     LEFT JOIN Child ON Tree.id = Child.p_id
ORDER BY Tree.id