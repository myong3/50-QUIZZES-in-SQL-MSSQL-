--21.查詢各科成績前三名的記錄
--方法二:use rank(),PARTITION BY
select * 
from (
    select *, rank()OVER(partition by CId order by score desc) as rankk 
    from sc
) a1
where a1.rankk < 4

--方法一:join 自己
select * from sc
where (
select count(*) from sc as a 
where sc.CId = a.CId and sc.score<a.score 
)< 3
order by CId asc, sc.score desc;