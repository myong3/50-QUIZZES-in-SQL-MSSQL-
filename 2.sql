-- 1.1 查詢同時存在" 01 "課程和" 02 "課程的情況
select *
from 
(
    (select * from SC where CId = '01')a1 
    inner join 
    (select * from SC where CId = '02')a2
    on a1.SId=a2.SId)























select * from 
    (select * from SC where SC.CId = '01') as t1, 
    (select * from SC where SC.CId = '02') as t2
where t1.SId = t2.SId;