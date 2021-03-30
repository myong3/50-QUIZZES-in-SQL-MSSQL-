-- 5.查詢平均成績大於等於 60 分的同學的學生編號和學生姓名和平均成績
select Student.SId,Student.Sname,a1.s AS avg
from Student 
inner join 
(
select SId, AVG(score) as s
from SC
group by SId
having AVG(score)>60
)a1
on Student.SId=a1.SId




select Student.SId,Sname,ss from Student,(
    select SId, AVG(score) as ss from SC  
    GROUP BY SId 
    HAVING AVG(score)> 60
    )r
where Student.SId = r.SId;