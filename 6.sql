-- 6.�d�ߦb SC ��s�b���Z���ǥ͸�T

select Student.* from Student
inner join 
(select SId from SC group by SId)a1
on Student.SId=a1.SId

select DISTINCT Student.*
from Student,SC
where Student.SId=SC.SId
