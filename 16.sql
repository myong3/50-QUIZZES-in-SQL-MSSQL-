--16.�˯�" 01 "�ҵ{���Ƥp�� 60�A�����ƭ��ǱƦC���ǥ͸�T
select s.*,sc.score 
from sc inner join 
    student s 
    on sc.SId=s.SId 
where CId='01'
and score<60 
order by score desc