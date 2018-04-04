-- 196. Delete Duplicate Emails
DELETE p1 FROM Person p1,
    Person p2
WHERE
    p1.Email = p2.Email AND p1.Id > p2.Id

-- SELECT will not work, By SELECT you are showing things you want to show which means hiding the other 
-- things you don’t want to present. But hiding things does NOT mean deleting. We can show the hidden 
-- things whenever we use SELECT to them, but we will no long be able to show things after deleting. 
-- So not SELECT-ing doesn’t mean deleting. Here we need to use DELET.
-- SO, sql query below will NOT be accepted!
SELECT * FROM Person WHERE Id IN ( SELECT MIN(Id) FROM Person GROUP BY Email);