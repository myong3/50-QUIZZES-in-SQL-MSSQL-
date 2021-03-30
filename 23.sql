--23.查詢出只選修兩門課程的學生學號和姓名

select s.SId,s.Sname 
from student s 
inner join 
(
    select SId from sc
    group by SId 
    having count(*) = 2
)a1
on s.SId = a1.SId 