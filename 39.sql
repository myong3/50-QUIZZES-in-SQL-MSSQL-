--39.查詢每門功成績最好的前兩名
select a1.CId, a1.rrank, s.SId, s.Sname, a1.score 
from  student s 
inner join
(
    select *, rank()over(partition by CId order by score desc) as rrank 
    from sc
)a1
on s.SId = a1.SId
where a1.rrank < 3
order by a1.CId, a1.rrank

-- 方法二 left join自己[條件:CId相同,分數較大]
-- 若分數較自己大的個數[count(b.CId)]只有1個(最大的只有一個結果-> b為null，第二大的只有一個結果-> b為最大的值)
-- 則代表他為前兩名
select a.CId, a.SId,count(b.CId)+1 as 排名 
from sc as a 
left join sc as b 
on a.CId = b.CId and a.score<b.score
group by a.CId, a.SId
having count(b.CId)<2
order by a.CId;


select*
from sc as a 
left join sc as b 
on a.CId = b.CId and a.score<b.score
where a.CId='01'
order by a.CId;