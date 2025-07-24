Select EmployeeID, TitleOfCourtesy,FirstName,LastName
from Employees
where country ='usa'

Select *
from products
where CategoryID in (1,2,4,8) and UnitPrice BETWEEN 100 and 200

select country, city, CompanyName, ContactName, Phone
from customers
where Region = 'WA' or Region = 'WY'

Select *
from products
where (CategoryID =1 and UnitPrice<=20)
   or (categoryID =8 and UnitPrice>=150)

Select CompanyName
from Customers
where fax is NULL
order by CompanyName

select *
from Customers
Where CompanyName like '%com'