--20.�έp�U�즨�Z�U���Ƭq�H�ơG�ҵ{�s���A�ҵ{�W�١A[100-85]�A[85-70]�A[70-60]�A[60-0] �ΩҦ��ʤ���

select c.Cname,a1.* from course c inner join
(select CId,
sum(case when sc.score<60 then 1 else 0 end) as [0-59�H��], 
CAST(CAST(sum(case when sc.score<60 then 1 else 0 end) as float)/count(*)as decimal(20,2)) as [0-59�ҥe�ʤ���],
sum(case when sc.score>=60 and sc.score<70 then 1 else 0 end) as [60-69�H��], 
CAST(CAST(sum(case when sc.score>=60 and sc.score<70 then 1 else 0 end) as float)/count(*)as decimal(20,2)) as [60-69�ҥe�ʤ���],
sum(case when sc.score>=70 and sc.score<85 then 1 else 0 end) as [70-84�H��], 
CAST(CAST(sum(case when sc.score>=70 and sc.score<85 then 1 else 0 end) as float)/count(*)as decimal(20,2)) as [70-84�ҥe�ʤ���],
sum(case when sc.score>=85 then 1 else 0 end) as [85-100�H��],
CAST(CAST(sum(case when sc.score>=85 then 1 else 0 end) as float)/count(*)as decimal(20,2)) as [85-100�ҥe�ʤ���]
from sc
group by CId)a1
on c.CId = a1.CId