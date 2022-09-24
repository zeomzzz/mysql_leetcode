# Write your MySQL query statement below
SELECT stock_name
     , SUM(if(operation = 'Sell', price, 0)) - SUM(if(operation = 'Buy', price, 0)) capital_gain_loss
FROM Stocks
GROUP BY stock_name