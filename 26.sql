--26.查詢同名學生名單，並統計同名人數

select Sname, count(*) num from student
group by Sname
having count(*) > 1