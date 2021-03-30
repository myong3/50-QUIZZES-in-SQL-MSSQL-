--31.查詢所有學生的課程及分數情況（存在學生沒成績，沒選課的情況）
select a.SId,a.Sname,a.CId,a.Cname,sc.score 
from
(
    select * from student s, course c
)a 
left join 
sc 
on a.CId = sc.CId and a.SId = sc.SId 
order by a.SId ,a.CId