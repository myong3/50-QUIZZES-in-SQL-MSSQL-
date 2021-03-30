--16.檢索" 01 "課程分數小於 60，按分數降序排列的學生資訊
select s.*,sc.score 
from sc inner join 
    student s 
    on sc.SId=s.SId 
where CId='01'
and score<60 
order by score desc