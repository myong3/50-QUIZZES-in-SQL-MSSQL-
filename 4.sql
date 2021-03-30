--1.3 查詢不存在" 01 "課程但存在" 02 "課程的情況
select *
from (
(select * from SC where CId='02')a1
left join
(select * from SC where CId='01')a2
on a1.SId=a2.SId
)
where a2.SId is null


select *
from SC
where SC.SId not in
(select s.SId from SC s where s.CId='01')
and SC.CId='02'
