--51.�d�߾ǥͪ��`���Z�A�öi��ƦW�A�`�����Ʈɤ��O�d�W���ů�

select *,rank()over(order by a1.sumScore desc) rank 
from (
    select SId, sum(score) sumScore 
    from sc 
    group by SId
)a1