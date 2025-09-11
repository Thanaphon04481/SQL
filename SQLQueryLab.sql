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
--ข้อมูลใบสั่งซื้อที่ถูกส่งไปประเทศที่ไม่มีผู้ผลิตสินค้าตั้งอยู๋
select * from Orders
where ShipCountry not in (select distinct country from Suppliers)

--การใส่ตัวเลขลำดับ

--ต้องการข้อมูลสินค้าที่มีราคาน้อยกว่า 50$
select ROW_NUMBER() OVER (order by unitprice) AS RowNum,
productName , Unitprice 
from products
where Unitprice <50
