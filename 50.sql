--50.�d�߾ǥͪ��`���Z�A�öi��ƦW�A�`�����ƮɫO�d�W���ů�

select *,dense_rank()over(order by a1.sumScore desc) rank 
from (
    select SId, sum(score) sumScore 
    from sc 
    group by SId
)a1