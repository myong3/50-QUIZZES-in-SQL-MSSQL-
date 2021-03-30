-- 6.查詢在 SC 表存在成績的學生資訊

select Student.* from Student
inner join 
(select SId from SC group by SId)a1
on Student.SId=a1.SId

select DISTINCT Student.*
from Student,SC
where Student.SId=SC.SId
