--21.�d�ߦU�즨�Z�e�T�W���O��
--��k�G:use rank(),PARTITION BY
select * 
from (
    select *, rank()OVER(partition by CId order by score desc) as rankk 
    from sc
) a1
where a1.rankk < 4

--��k�@:join �ۤv
select * from sc
where (
select count(*) from sc as a 
where sc.CId = a.CId and sc.score<a.score 
)< 3
order by CId asc, sc.score desc;