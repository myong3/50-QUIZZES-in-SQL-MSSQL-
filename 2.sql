-- 1.1 �d�ߦP�ɦs�b" 01 "�ҵ{�M" 02 "�ҵ{�����p
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