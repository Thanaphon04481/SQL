select EmployeeID, FirstName, LastName
from Employees
where City = 'London'

select City, Country from Customers
select distinct city, country from customers
select * from Customers where city = 'London' or City = 'Vancouver'
select * from Products where Unitprice > 200

select * from Customers where Country = 'USA' or City = 'Vancouver'

select * from Products where Unitprice >=50 and Unitsinstock <20

--แสดงข้อมูลสินค้าที่มีจำนวนคงเหลือตํ่ากว่า 20 หรือ น้อยกว่าระดับการสั่งซื้อ
select * from Products
where UnitsinStock<20 or Unitsinstock <= ReorderLevel

select * from Products where UnitPrice Between 50 and 100

select * from Products where UnitPrice >= 50 and UnitPrice <=100

select * from Customers where country in ('Brazill','Argentina','Mexico')

select * from Customers where country = 'Brazill'
or Country = 'Argentina'
or Country = 'Mexico'

SELECT *
FROM Employees
WHERE FirstName LIKE 'N%'

SELECT *
FROM Customers
WHERE CompanyName LIKE 'A%'

SELECT *
FROM Customers
WHERE CompanyName LIKE '%Y'

select firstname, Lastname from Employees

where FirstName LIKE '%an'

SELECT companyName from customers
WHERE CompanyName LIKE '_A'

select * from Employees where FirstName Like'_____'

select ProductID,ProductName,UnitPrice
from Products
Order by UnitPrice 

select CompanyName,ContactName
from Customers
order by ContactName ASC

select  top 10 ProductName,UnitPrice,UnitsInStock
from Products
order by Unitsinstock desc

select CategoryID,ProductName,Unitprice
from Products
Order by CategoryID asc, Unitprice desc
