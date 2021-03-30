--12.查詢至少有一門課與學號為" 01 "的同學所學相同的同學的資訊
select * from student
where SId in 
(select SId
from sc
where CId in(select CId from sc where SId='01')
group by SId)


select * from student 
where student.SId in (
    select sc.SId from sc 
    where sc.CId in(
        select sc.CId from sc 
        where sc.SId = '01'
    )
);