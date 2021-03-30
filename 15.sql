--15.查詢兩門及其以上不及格課程的同學的學號，姓名及其平均成績
select s.SId,s.Sname,a1.avgScore 
from student s inner  join
        (select SId,AVG(score)avgScore 
        from sc 
        where score < 60 
        group by SId 
        having count(*) > 1)as a1
    on s.SId=a1.SId