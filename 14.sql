--14.�d�ߨS�ǹL"�i�T"�Ѯv���ª����@���ҵ{���ǥͩm�W
select Sname 
from 
student 
where SId not in (select SId 
              from sc 
              where CId in (select CId 
                            from course 
                            where TId = (select TId from teacher where Tname ='�i�T')
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
                            where TId = (select TId from teacher where Tname ='�i�T')
                           )
              and student.SId=sc.SId
              group by SId
             )
