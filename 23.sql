--23.�d�ߥX�u��ר���ҵ{���ǥ;Ǹ��M�m�W

select s.SId,s.Sname 
from student s 
inner join 
(
    select SId from sc
    group by SId 
    having count(*) = 2
)a1
on s.SId = a1.SId 