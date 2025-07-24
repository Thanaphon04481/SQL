select Region, Country, City, CompanyName, Phone
from Customers
order by 1 asc, 2 asc, 3 asc 

SELECT ProductID, ProductName,
UnitPrice, UnitsinStock,
UnitPrice * UnitsInStock AS StockValue
FROM Products

SELECT ProductiD as รหัส, ProductName as สินค้า,
UnitsInStock + UnitsOnOrder as จำนวนคงเหลือทั้งหมด,
ReorderLevel as จุดสั่งซื้อ
FROM Products
where (UnitsInStock + UnitsOnOrder) < ReorderLevel

SELECT ProductID, ProductName,
	UnitPrice, ROUND(UnitPrice * 0.07, 2) AS Vat7
FROM Products

SELECT employeeID,
TitleOfCourtesy+FirstName+space(1)+LastName as [Employee Name]
FROM Employees

select orderID, ProductID, UnitPrice, Quantity, Discount,
	   (UnitPrice* Quantity) as TotalPrice,
	   (UnitPrice* Quantity)-(UnitPrice* Quantity*Discount) as NetPrice
from [Order Details]

select orderID, ProductID,UnitPrice, Quantity, Discount,
		(UnitPrice* Quantity) as TotalPrice,
	    UnitPrice* Quantity*(1-Discount) as NetPrice 
from [Order Details]

select (42.40*35)-(42.40*35*0.15)

Select employeeID, FirstName, BirthDate, Datediff(YEAR, BirthDate, '2024-12-31') Age,
HireDate, DATEDIFF (YEAR, HireDate, GETDATE()) YearInOffice 
from Employees

select getdate()

SELECT COUNT(*) AS จำนวนสินค้า, count(ProductID), count(productName), count(UnitPrice)
FROM	Products
WHERE	UnitsInstock < 15

Select count(*) from Customers where Country = 'USA'

Select count(*) from Employees where City = 'USA'

Select count(*) from Orders where year(OrderDate) =1997

select count(*) from [Order Details] where ProductID =1

Select sum(quantity)
from [Order Details]
where productID =2

Select sum(UnitPrice * UnitsInstock)
from Products

Select sum(UnitsOnOrder)
from Products
where CategoryID =8

Select max(unitprice), min(UnitPrice)
from [Order Details]
where ProductId =71

Select avg(unitPrice), min(UnitPrice), max(UnitPrice)
from [Order Details]
where ProductID =5

select country, COUNT(*) as [Num of Country]
from Customers
Group by Country

Select categoryID, avg(UnitPrice), min(UnitPrice), max(Unitprice)
from products
Group by categoryID

select orderID, count(*)
from [Order Details]
Group by orderID

Select ShipCountry, count(*)as 'Num of Country'
from Orders
group by shipcountry
Having count(*)>100

select OrderID, count(*)
from [Order Details]
Group by OrderID
Having count(*)<3

Select Country, count(*)as 'Num of Country'
from Customers
group by Country
Having count(*)>5

Select ShipCountry, count(*) numOfOrder
from orders
group by ShipCountry
Having count(*)>=100

Select orderID, sum(UnitPrice*Quantity*(1-Discount))
from [Order Details]
Group by OrderID
Having sum(UnitPrice*Quantity*(1-Discount)) <100

SELECT ShipCountry, COUNT(*) AS numoforders
FROM Orders
WHERE YEAR(OrderDate) = 1997
GROUP BY ShipCountry
HAVING COUNT(*) <20
ORDER BY COUNT(*) DESC

select top 1 orderID, sum(UnitPrice*Quantity*(1-Discount)) as total 
from [Order Details]
GROUP BY OrderID
order by total desc

select top 5 orderID, sum(UnitPrice*Quantity*(1-Discount)) as total 
from [Order Details]
GROUP BY OrderID
order by 2 desc

