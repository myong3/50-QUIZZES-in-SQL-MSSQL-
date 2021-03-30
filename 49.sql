-- 49.按各科成績進行排序，並顯示排名， Score 重複時合併名次
select a.CId, a.SId, a.score,rank()over(PARTITION BY CId ORDER BY SUM(a.score)DESC) rank
from sc as a 
group by a.CId, a.SId,a.score
order by a.CId,rank
