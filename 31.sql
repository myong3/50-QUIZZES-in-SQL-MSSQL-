--31.�d�ߩҦ��ǥͪ��ҵ{�Τ��Ʊ��p�]�s�b�ǥͨS���Z�A�S��Ҫ����p�^
select a.SId,a.Sname,a.CId,a.Cname,sc.score 
from
(
    select * from student s, course c
)a 
left join 
sc 
on a.CId = sc.CId and a.SId = sc.SId 
order by a.SId ,a.CId