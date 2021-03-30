-- 1.2 查詢存在" 01 "課程但可能不存在" 02 "課程的情況(不存在時顯示為 null )
select *
from (
(select * from SC where CId = '01')a1 
left join
(select * from SC where CId = '02')a2
on
a1.SId=a2.SId
)



































select * from 
(select * from SC where SC.CId = '01') as t1
left join 
(select * from SC where SC.CId = '02') as t2
on t1.SId = t2.SId;