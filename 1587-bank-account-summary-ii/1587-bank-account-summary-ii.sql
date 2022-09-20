SELECT u.name
     , SUM(t.amount) AS balance
FROM Users u
     INNER JOIN Transactions t ON u.account = t.account
GROUP BY u.account -- name으로 group  문제점 : name 중복. primary key는 account
HAVING balance > 10000