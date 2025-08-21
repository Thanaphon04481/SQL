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

Select p. ProductID, p.ProductName, s. CompanyName, s. Country
from products p Join Suppliers s on p.SupplierID = s. SupplierID
where Country in ('usa', 'uk')

select e.EmployeeID, FirstName, o.OrderID
from Employees e join orders o on e.EmployeeID = o. EmployeeID
order by EmployeeID

SELECT O.OrderID เลขใบสั่งซื้อ, C.CompanyName ลูกค้า,E.FirstName พนักงาน, O.ShipAddress ส่งไปที่
FROM Orders O, Customers C, Employees E
WHERE O.CustomerID=C.CustomerID
AND O.EmployeeID=E.EmployeeID

SELECT O.OrderID เลขใบสั่งซื้อ, C.CompanyName ลูกค้า, E.FirstName พนักงาน, O.ShipAddress ส่งไปที่
FROM Orders O
join Customers C on O.CustomerID=C.CustomerID
join Employees E on O.EmployeeID=E.EmployeeID

select e.EmployeeID, FirstName , count(*) as [จ านวน order] , sum(freight) as [Sum of Freight]
from Employees e join Orders o on e.EmployeeID = o.EmployeeID
where year(orderdate) = 1998
group by e.EmployeeID, FirstName

SELECT s.CompanyName, count(*) จำนวนorder
FROM Shippers s JOIN Orders o ON s.ShipperID = o.ShipVia
GROUP BY s.CompanyName
order by 2 desc

select p.ProductID, p.ProductName, sum(Quantity) จำนวนที่ขายได้
from products p join [Order Details] od on p.ProductID = od.ProductID
group by p.ProductID, p.ProductName

select distinct p.ProductID, p.ProductName
from Employees e join Orders o on e.EmployeeID = o.EmployeeID
		   join[Order Details] od on o.OrderID = od.OrderID
		   join Products p on p.ProductID = od.ProductID
Where e.FirstName = 'Nancy'
order by ProductID
