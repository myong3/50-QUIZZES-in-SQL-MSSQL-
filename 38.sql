--38.�d�ߤ��P�ҵ{���Z�ۦP���ǥͪ��ǥͽs���B�ҵ{�s���B�ǥͦ��Z
--��k�@.�Q��group by SId,score �� score�ۦP�ƶq >1 ���H���X��
select sc.* from sc inner join
(select SId,score from sc group by SId,score having count(score) >1)a1
on sc.SId = a1.SId and sc.score = a1.score

--��k�G.join�ۤv

select  a.CId, a.SId,  a.score from sc as a
inner join 
sc as b
on a.SId = b.SId
and a.CId != b.CId
and a.score = b.score
group by a.CId, a.SId,a.score;