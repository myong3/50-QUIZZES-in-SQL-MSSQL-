--38.查詢不同課程成績相同的學生的學生編號、課程編號、學生成績
--方法一.利用group by SId,score 把 score相同數量 >1 的人取出來
select sc.* from sc inner join
(select SId,score from sc group by SId,score having count(score) >1)a1
on sc.SId = a1.SId and sc.score = a1.score

--方法二.join自己

select  a.CId, a.SId,  a.score from sc as a
inner join 
sc as b
on a.SId = b.SId
and a.CId != b.CId
and a.score = b.score
group by a.CId, a.SId,a.score;