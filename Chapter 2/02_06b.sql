-- Find sales by month and year
SELECT MONTHNAME(CreationDate) AS MonthName,
  YEAR(CreationDate) AS OrderYear,
  COUNT(DISTINCT Orders.OrderID) AS TotalOrders,
  SUM(Quantity) AS TotalQuantity,
  SUM(TotalDue) AS TotalAmount
FROM Orders
  LEFT OUTER JOIN OrderItem ON Orders.OrderID = OrderItem.OrderID
GROUP BY MonthName,
  OrderYear
ORDER BY OrderYear,
  MONTH(CreationDate);