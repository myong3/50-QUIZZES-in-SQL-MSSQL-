--32.�d�ߥ���@���ҵ{���Z�b 70 ���H�W���m�W�B�ҵ{�W�٩M����

select s.SId,s.Sname,c.Cname,sc.score 
from student s 
inner join 
sc 
on s.SId = sc.SId 
inner join 
course c 
on sc.CId = c.CId 
where score >= 70 
order by sc.CId, s.SId