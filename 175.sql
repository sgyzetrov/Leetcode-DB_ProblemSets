-- 175. Combine Two Tables
select FirstName, LastName, City, State from Person left join Address on Person.PersonId = Address.PersonId

-- also

SELECT p.FirstName, p.LastName, a.City, a.State 
FROM Person p 
LEFT JOIN Address a 
ON p.PersonId = a.PersonId