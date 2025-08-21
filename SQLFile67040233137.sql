--1
SELECT 
    o.OrderID,
    c.CompanyName AS Customer,
    (e.FirstName + ' ' + e.LastName) AS EmployeeName,
    o.OrderDate,
    s.CompanyName AS Shipper,
    o.ShipCity,
    o.ShipCountry,
    SUM(od.Quantity * od.UnitPrice * (1 - od.Discount)) AS TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Employees e ON o.EmployeeID = e.EmployeeID
JOIN Shippers s ON o.ShipVia = s.ShipperID
JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY o.OrderID, c.CompanyName, e.FirstName, e.LastName, 
         o.OrderDate, s.CompanyName, o.ShipCity, o.ShipCountry;

--2
SELECT 
    c.CompanyName,
    c.ContactName,
    c.City,
    c.Country,
    COUNT(o.OrderID) AS OrderCount,
    SUM(od.Quantity * od.UnitPrice * (1 - od.Discount)) AS TotalAmount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN [Order Details] od ON o.OrderID = od.OrderID
WHERE o.OrderDate BETWEEN '1997-01-01' AND '1997-03-31'
GROUP BY c.CompanyName, c.ContactName, c.City, c.Country;

--3
SELECT 
    (e.FirstName + ' ' + e.LastName) AS EmployeeName,
    e.Title,
    e.HomePhone,
    COUNT(DISTINCT o.OrderID) AS OrderCount,
    SUM(od.Quantity * od.UnitPrice * (1 - od.Discount)) AS TotalAmount
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
JOIN [Order Details] od ON o.OrderID = od.OrderID
WHERE o.OrderDate BETWEEN '1996-11-01' AND '1996-12-31'
  AND o.ShipCountry IN ('USA', 'Canada', 'Mexico')
GROUP BY e.FirstName, e.LastName, e.Title, e.HomePhone;

--4
SELECT 
    p.ProductID,
    p.ProductName,
    p.UnitPrice,
    SUM(od.Quantity) AS TotalQuantity
FROM Products p
JOIN [Order Details] od ON p.ProductID = od.ProductID
JOIN Orders o ON od.OrderID = o.OrderID
WHERE o.OrderDate BETWEEN '1997-06-01' AND '1997-06-30'
GROUP BY p.ProductID, p.ProductName, p.UnitPrice;

--5
SELECT 
    p.ProductID,
    p.ProductName,
    p.UnitPrice,
    ROUND(SUM(od.Quantity * od.UnitPrice * (1 - od.Discount)), 2) AS TotalAmount
FROM Products p
JOIN [Order Details] od ON p.ProductID = od.ProductID
JOIN Orders o ON od.OrderID = o.OrderID
WHERE o.OrderDate BETWEEN '1997-01-01' AND '1997-01-31'
GROUP BY p.ProductID, p.ProductName, p.UnitPrice;

--6
SELECT 
    s.CompanyName AS Supplier,
    s.ContactName,
    s.Phone,
    s.Fax,
    p.ProductID,
    p.ProductName,
    p.UnitPrice,
    SUM(od.Quantity) AS TotalQuantity
FROM Suppliers s
JOIN Products p ON s.SupplierID = p.SupplierID
JOIN [Order Details] od ON p.ProductID = od.ProductID
JOIN Orders o ON od.OrderID = o.OrderID
WHERE YEAR(o.OrderDate) = 1996
GROUP BY s.CompanyName, s.ContactName, s.Phone, s.Fax, 
         p.ProductID, p.ProductName, p.UnitPrice;

--7
SELECT 
    p.ProductID,
    p.ProductName,
    p.UnitPrice,
    SUM(od.Quantity) AS TotalQuantity
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
JOIN [Order Details] od ON p.ProductID = od.ProductID
JOIN Orders o ON od.OrderID = o.OrderID
WHERE c.CategoryName = 'Seafood'
  AND o.ShipCountry = 'USA'
  AND YEAR(o.OrderDate) = 1997
GROUP BY p.ProductID, p.ProductName, p.UnitPrice;

--8
SELECT 
    (e.FirstName + ' ' + e.LastName) AS EmployeeName,
    e.Title,
    DATEDIFF(YEAR, e.HireDate, '1998-12-31') AS YearsOfService,
    COUNT(DISTINCT o.OrderID) AS OrderCount
FROM Employees e
LEFT JOIN Orders o ON e.EmployeeID = o.EmployeeID 
                    AND YEAR(o.OrderDate) = 1998
WHERE e.Title = 'Sales Representative'
GROUP BY e.FirstName, e.LastName, e.Title, e.HireDate;

--9
SELECT 
    (e.FirstName + ' ' + e.LastName) AS EmployeeName,
    e.Title
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.CompanyName = 'Frankenversand'
  AND YEAR(o.OrderDate) = 1996
GROUP BY e.FirstName, e.LastName, e.Title;

--10
SELECT 
    (e.FirstName + ' ' + e.LastName) AS EmployeeName,
    SUM(od.Quantity * od.UnitPrice * (1 - od.Discount)) AS BeverageSales
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
JOIN [Order Details] od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Beverages'
  AND YEAR(o.OrderDate) = 1996
GROUP BY e.FirstName, e.LastName;

--11
SELECT 
    c.CategoryName,
    p.ProductID,
    p.ProductName,
    SUM(od.Quantity * od.UnitPrice * (1 - od.Discount)) AS TotalSales
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
JOIN [Order Details] od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE e.FirstName = 'Nancy'
  AND o.OrderDate BETWEEN '1997-01-01' AND '1997-03-31'
GROUP BY c.CategoryName, p.ProductID, p.ProductName;

--12
SELECT DISTINCT 
    cu.CompanyName
FROM Customers cu
JOIN Orders o ON cu.CustomerID = o.CustomerID
JOIN [Order Details] od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Seafood'
  AND YEAR(o.OrderDate) = 1997;

--13
SELECT 
    s.CompanyName AS Shipper,
    o.ShippedDate
FROM Orders o
JOIN Shippers s ON o.ShipVia = s.ShipperID
WHERE o.ShipAddress LIKE '%Johnstown Road%'
  AND o.ShippedDate IS NOT NULL;
