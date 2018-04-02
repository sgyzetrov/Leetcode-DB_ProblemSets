-- 181. Employees Earning More Than Their Managers
-- 2163 ms
select a.Name as Employee from Employee a where a.Salary > (select b.Salary from Employee b where b.Id = a.ManagerId)

-- also
-- 1668 ms
select E1.Name as Employee
from Employee as E1, Employee as E2 
where E1.ManagerId = E2.Id and E1.Salary > E2.Salary