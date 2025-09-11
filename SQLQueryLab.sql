--หาข้อมูลnancy
select title from Employees where FirstName = 'nancy'
--หาข้อมูลที่มีตำแหน่งเดียวกัน
select * from Employees where Title = 'Sales Repersentive'
--ต้องการชื่อนามสกุลมากที่สุด
select FirstName, LastName from Employees
where BirthDate = (Select min(BirthDate) from Employees)
--
select ProductName from Products
Where unitprice > (select UnitPrice from products
						  where productName = 'Ikura')
--ต้องการชื่อบริษัทลูกค้า
select CompanyName from Customers
Where city = (select city from customers
					 where companyName = 'Around the Horn')
--
select FirstName, LastName from Employees
where HireDate = (select max(HireDate) from Employees)
--ข้อมูลใบสั่งซื้อที่ถูกส่งไปประเทศที่ไม่มีผู้ผลิตสินค้าตั้งอยู่
select * from Orders
where ShipCountry not in (select distinct country from Suppliers)

--การใส่ตัวเลขลำดับ

--ต้องการข้อมูลสินค้าที่มีราคาน้อยกว่า 50$
select ROW_NUMBER() OVER (order by unitprice) AS RowNum,
productName , Unitprice 
from products
where Unitprice <50




Insert into Shippers
VALUES('บริษัทขนเยอะจัด','021-12345678')

Insert into Shippers(CompanyName)
VALUES('บริษัทมหาชนจำกัด')

Insert into Customers(CustomerID, CompanyName)
VALUES('A0001', 'บริษัทซื้อเยอะจำกัด')

Insert into Employees(FirstName,LastName)
values ('วุ้นเส้น','เขมรสกุล')

select * from Employees



Update Shippers
set Phone = '085-99998989'
where ShipperID = 5

select * from shippers

UPDATE products
set UnitsInstock = UnitsInstock+100
where ProductID = 1

select * from products

Update Customers
set City = 'อุดรธานี', Country= 'Thailand'
where customerID = 'A0001'

Delete from shippers
where shipperID = 6

