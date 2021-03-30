--10. 查詢學過「張三」老師授課的同學的資訊

select s.* 
from Student s 
inner join SC on s.SId = SC.SId 
inner join Course c on SC.CId=c.CId
where c.TId in(select TId from Teacher where Tname='張三')

select Student.* from Student,Teacher,Course,SC
where 
    Student.SId = SC.SId 
    and Course.CId=SC.CId 
    and Course.TId = Teacher.TId 
    and Tname = '張三';