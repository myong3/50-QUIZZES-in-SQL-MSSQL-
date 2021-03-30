--20.参璸Θ罿だ计琿计揭祘絪腹揭祘嘿[100-85][85-70][70-60][60-0] の┮κだゑ

select c.Cname,a1.* from course c inner join
(select CId,
sum(case when sc.score<60 then 1 else 0 end) as [0-59计], 
CAST(CAST(sum(case when sc.score<60 then 1 else 0 end) as float)/count(*)as decimal(20,2)) as [0-59┮κだゑ],
sum(case when sc.score>=60 and sc.score<70 then 1 else 0 end) as [60-69计], 
CAST(CAST(sum(case when sc.score>=60 and sc.score<70 then 1 else 0 end) as float)/count(*)as decimal(20,2)) as [60-69┮κだゑ],
sum(case when sc.score>=70 and sc.score<85 then 1 else 0 end) as [70-84计], 
CAST(CAST(sum(case when sc.score>=70 and sc.score<85 then 1 else 0 end) as float)/count(*)as decimal(20,2)) as [70-84┮κだゑ],
sum(case when sc.score>=85 then 1 else 0 end) as [85-100计],
CAST(CAST(sum(case when sc.score>=85 then 1 else 0 end) as float)/count(*)as decimal(20,2)) as [85-100┮κだゑ]
from sc
group by CId)a1
on c.CId = a1.CId