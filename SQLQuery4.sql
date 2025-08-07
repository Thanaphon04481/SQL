--1
select * from Products
where Unitprice = 15
--2
select * from Products
where UnitsInStock < 250
--3
SELECT * from ProductID, ProductName
from Product 
where Discontinued = 1
--4
select * from ProductID, ProductName, UnitPrice
from Products
where UnitPrice> 100
--5
SELECT ProductID, UnitPrice
from Products 
where ProductName like '%ยางลบ%'
--6
SELECT ReceipID, ReceipDate, TotaCash
from Receipts
where ReceipDate < '2023-02-15'
--7
select productID, ProductName, UnitsInstock
from Products
where UnitsInstock >=400
--8
select productID, ProductName, UnitPrice, UnitsInstock
from Products
where CategoryName = ('แชมะพู','ดินสอ','แป้งเด็ก','ยางลบ')
--9
select CategoryID, CategoryName[Deceiption]
from Categories
where CategoryName = 'เครื่องสำอาง'
--10
select Title,FirstName,LastName
from Employes
where [Position] = 'Sale Representative'
--11
select Title,FirstName+space(1),LastName, EmpName, UserName
from Employees
--12
select username, password
from Employees
where FirstName = 'ก้องนิรันด์'
--13
select EmployeeID
from Receipts
where ReceiptID = 3
--14
select ProductID, ProductName,UnitPrice
from Products
where CategoryID = 2
--15
select productID,ProductName,UnitPrice
from Products
where CategoryID in (2,4)
