--34.�d�߽ҵ{�s���� 01 �B�ҵ{���Z�b 80 ���ΥH�W���ǥͪ��Ǹ��M�m�W
select s.SId,s.Sname 
from student s 
inner join sc 
on s.SId = sc.SId 
where sc.CId = '01' 
and sc.score >= 80