SELECT Users.name AS name
     , SUM(Transactions.amount) AS balance
FROM Users
     INNER JOIN Transactions ON Users.account = Transactions.account
GROUP BY Users.name
HAVING balance > 10000