-- Determine top customer state
SELECT State,
  SUM(Quantity) AS TotalQuanity
FROM Orders
  LEFT OUTER JOIN OrderItem ON Orders.OrderID = OrderItem.OrderID
  LEFT OUTER JOIN Customer ON Orders.CustomerID = Customer.CustomerID
GROUP BY State
ORDER BY TotalQuanity DESC
LIMIT 1