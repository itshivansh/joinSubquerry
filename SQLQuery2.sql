SELECT MAX (UnitPrice) as UnitPrice
FROM Products 
WHERE UnitPrice NOT IN (SELECT Max (UnitPrice) FROM Products); 




SELECT distinct *
FROM Products 
Where UnitPrice > (Select MAX(UnitsInStock) FROM Products); 


Select distinct *
From Products
where UnitPrice= (select MAX(UnitPrice)as UnitPrice from Products where UnitPrice Not In(SELECT Max (UnitPrice) FROM Products))




Select * from Customers as customer INNER JOIN Orders as orders on customer.CustomerID=orders.CustomerID


Select * from Customers as customer LEFT OUTER JOIN Orders as orders on customer.CustomerID=orders.CustomerID





Select distinct Employees.EmployeeName,mgr.EmployeeName as Manager
from Employees INNER JOIN Employees as mgr on mgr.EmployeeId=Employees.MgrId

select * from Employees