# Write your MySQL query statement below
SELECT activity_date day
     , COUNT(DISTINCT user_id) active_users
FROM Activity
GROUP BY activity_date
HAVING activity_date >= DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND activity_date <= '2019-07-27 23:59:59'