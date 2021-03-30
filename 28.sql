--28.查詢每門課程的平均成績，結果按平均成績降序排列，平均成績相同時，按課程編號升序排列

select CId,avg(score) average 
from sc 
group by CId
order by average desc,CId asc