--11.�d�ߨS���ǥ��Ҧ��ҵ{���P�Ǫ���T
select *
from student s
where s.SId not in( select sc.SId
from sc
group by sc.SId
having count(sc.CId) = (select count(CId) from course))



select * from student
where student.SId not in (
  select sc.SId from sc
  group by sc.SId
  having count(sc.CId)= (select count(CId) from course)
);