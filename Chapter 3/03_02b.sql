-- Find infrequent customers
SELECT 
Customer.CustomerID,
FirstName,
LastName,
COUNT(DISTINCST OrderID) AS TotalOrders
FROM Orders
LEFT OUTER JOIN Customer
ON Orders.CustomerID = Customer.CustomerID
GROUP BY Customer.CustomerID
HAVING COUNT(DISTINCT OrderID) = 1