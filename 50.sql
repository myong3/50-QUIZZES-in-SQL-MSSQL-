--50.查詢學生的總成績，並進行排名，總分重複時保留名次空缺

select *,dense_rank()over(order by a1.sumScore desc) rank 
from (
    select SId, sum(score) sumScore 
    from sc 
    group by SId
)a1