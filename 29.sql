--29.�d�ߥ������Z�j�󵥩� 85 ���Ҧ��ǥͪ��Ǹ��B�m�W�M�������Z

select s.SId,s.Sname,a.average
from student s 
inner join
(
    select SId,avg(score) average 
    from sc 
    group by SId 
    having avg(score) >= 85
)a
on s.SId = a.SId