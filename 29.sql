--29.查詢平均成績大於等於 85 的所有學生的學號、姓名和平均成績

select s.SId,s.Sname,a.average
from student s 
inner join
(
    select SId,avg(score) average 
    from sc 
    group by SId 
    having avg(score) >= 85
)a
on s.SId = a.SId