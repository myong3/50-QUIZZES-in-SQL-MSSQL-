-- 49.���U�즨�Z�i��ƧǡA����ܱƦW�A Score ���ƮɦX�֦W��
select a.CId, a.SId, a.score,rank()over(PARTITION BY CId ORDER BY SUM(a.score)DESC) rank
from sc as a 
group by a.CId, a.SId,a.score
order by a.CId,rank
