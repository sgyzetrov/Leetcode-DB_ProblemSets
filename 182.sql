-- 182. (en-US_version) Find Duplicate Emails
select distinct Email from Person where Id not in (select min(Id) from Person group by Email )

-- 182. (zh-CN_version) Delete Duplicate Emails
select * from Person where Id in (select min(Id) from Person group by Email )