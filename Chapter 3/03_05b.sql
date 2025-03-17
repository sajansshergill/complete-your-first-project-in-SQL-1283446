-- Calculate repeat customer rate
WITH Repeat_Customers AS 
(
  SELECT
  CustomerID AS Repeat_Cus
  FROM Orders 
  GROUP BY CustomerID
  HAVING COUNT(OrderID) > 1
)
SELECT
(COUNT(DISTINCT Repeat_Cus)/
COUNT(DISTINCT CustomerID))*100
as CutomerRepeatRate
FROM Orders
LEFT OUTER JOIN Repeat_Customers
ON Orders.CustomerID = Repeat_Customers.Repeat_Cus