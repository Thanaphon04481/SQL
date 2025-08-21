  Select CategoryName, ProductName, UnitPrice
  From Products, Categories
  Where products.CategoryID = Categories.CategoryID
  and CategoryName = 'seafood'

  Select c.CategoryName, p.ProductName, P.UnitPrice
  From product as p john Categories as c
  on p.CategoryID = c.CategoryID
  Where 

  SELECT CompanyName, OrderID
  FROM Orders, Shippers
  WHERE Shippers.ShipperID = Orders.Shipvia

  SELECT CompanyName, OrderID
  FROM Orders JOIN Shippers
  ON Shippers.ShipperID = Orders.Shipvia

SELECT CompanyName, OrderID
FROM Orders, Shippers
WHERE Shippers.ShipperID = Orders.Shipvia
AND OrderID = 10275

SELECT CompanyName, OrderID
FROM Orders JOIN Shippers
ON Shippers.ShipperID=Orders.Shipvia
WHERE OrderID=10275

