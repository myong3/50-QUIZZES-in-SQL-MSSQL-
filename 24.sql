--24.琩高╧ネネ计

select 
sum(case when Ssex='╧' then 1 else 0 end) as ╧ネ计,
sum(case when Ssex='' then 1 else 0 end) as ネ计
from student s

select Ssex, count(*) as 计秖
from student
group by Ssex;