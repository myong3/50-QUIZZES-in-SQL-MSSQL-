--19.���U�즨�Z�i��ƧǡA����ܱƦW�A Score ���ƮɫO�d�W���ů�
select a.CId, a.SId, a.score,DENSE_RANK()over(PARTITION BY CId ORDER BY SUM(a.score)DESC) rank
from sc as a 
group by a.CId, a.SId,a.score
order by a.CId,rank
