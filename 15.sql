--15.�d�ߨ���Ψ�H�W���ή�ҵ{���P�Ǫ��Ǹ��A�m�W�Ψ䥭�����Z
select s.SId,s.Sname,a1.avgScore 
from student s inner  join
        (select SId,AVG(score)avgScore 
        from sc 
        where score < 60 
        group by SId 
        having count(*) > 1)as a1
    on s.SId=a1.SId