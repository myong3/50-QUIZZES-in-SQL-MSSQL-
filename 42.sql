--42.�d�߿�פF�����ҵ{���ǥ͸�T
select * 
from student 
where SId in
(
    select SId 
    from sc 
    group by SId 
    having count(CId) = ( 
                            select count(*)
                            from course c
                        )
)
