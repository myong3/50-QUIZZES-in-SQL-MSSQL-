--24.�d�ߨk�͡B�k�ͤH��

select 
sum(case when Ssex='�k' then 1 else 0 end) as �k�ͤH��,
sum(case when Ssex='�k' then 1 else 0 end) as �k�ͤH��
from student s

select Ssex, count(*) as �ƶq
from student
group by Ssex;