-- 5.�d�ߥ������Z�j�󵥩� 60 �����P�Ǫ��ǥͽs���M�ǥͩm�W�M�������Z
select Student.SId,Student.Sname,a1.s AS avg
from Student 
inner join 
(
select SId, AVG(score) as s
from SC
group by SId
having AVG(score)>60
)a1
on Student.SId=a1.SId




select Student.SId,Sname,ss from Student,(
    select SId, AVG(score) as ss from SC  
    GROUP BY SId 
    HAVING AVG(score)> 60
    )r
where Student.SId = r.SId;