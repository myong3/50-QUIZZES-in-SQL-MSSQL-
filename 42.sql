--42.查詢選修了全部課程的學生資訊
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
