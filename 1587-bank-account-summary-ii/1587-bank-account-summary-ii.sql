SELECT u.name
     , SUM(t.amount) AS balance
FROM Users u
     INNER JOIN Transactions t ON u.account = t.account
GROUP BY u.name
HAVING balance > 10000