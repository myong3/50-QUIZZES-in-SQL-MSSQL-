--14.查詢沒學過"張三"老師講授的任一門課程的學生姓名
select Sname 
from 
student 
where SId not in (select SId 
              from sc 
              where CId in (select CId 
                            from course 
                            where TId = (select TId from teacher where Tname ='張三')
                           )
              group by SId
             )

select Sname
from 
student 
where not exists (select SId 
              from sc 
              where CId in (select CId 
                            from course 
                            where TId = (select TId from teacher where Tname ='張三')
                           )
              and student.SId=sc.SId
              group by SId
             )
