-- 182. Find Duplicate Emails
select distinct Email from Person where Id not in (select min(Id) from Person group by Email )

-- also
select Email from Person Group by Email having count(Email) > 1;