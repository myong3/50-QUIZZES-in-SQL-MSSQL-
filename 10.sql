--10. �d�߾ǹL�u�i�T�v�Ѯv�½Ҫ��P�Ǫ���T

select s.* 
from Student s 
inner join SC on s.SId = SC.SId 
inner join Course c on SC.CId=c.CId
where c.TId in(select TId from Teacher where Tname='�i�T')

select Student.* from Student,Teacher,Course,SC
where 
    Student.SId = SC.SId 
    and Course.CId=SC.CId 
    and Course.TId = Teacher.TId 
    and Tname = '�i�T';