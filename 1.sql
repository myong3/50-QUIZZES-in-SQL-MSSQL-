--1. 查詢" 01 "課程比" 02 "課程成績高的學生的資訊及課程分數
select Student.*,s.score1,s.score2
from [Student] inner join 
    (select a1.SId as SId,a1.score as score1,a2.score  as score2 from 
        ((select * from [SC] where CId = '01') a1
        inner join
        (select * from [SC] where CId = '02') a2
        on a1.SId=a2.SId
        
        where a1.score>a2.score
    )s 
on [Student].SId = s.SId



















select Student.*,r.class1,r.class2 from Student inner JOIN (
    select t1.SId, class1, class2 from
          (select SId, score as class1 from SC sc where sc.CId = '01')as t1, 
          (select SId, score as class2 from SC sc where sc.CId = '02')as t2
    where t1.SId = t2.SId AND t1.class1 > t2.class2
)r 
on Student.SId = r.SId;