--18.�d�ߦU�즨�Z�̰����B�̧C���M������
--�H�p�U�Φ���ܡG�ҵ{ ID�A�ҵ{ name�A�̰����A�̧C���A�������A�ή�v�A�����v�A�u�}�v�A�u�q�v
--�ή欰>=60�A�������G70-80�A�u�}���G80-90�A�u�q���G>=90
--�n�D��X�ҵ{���M��פH�ơA�d�ߵ��G���H�ƭ��ǱƦC�A�Y�H�ƬۦP�A���ҵ{���ɧǱƦC

select course.Cname,a1.* 
from course 
inner JOIN 
    (
    select 
    sc.CId,
    --course.Cname,
    MAX(score)as �̰���,
    MIN(score)as �̧C��,
    AVG(score) as ������,
    Count(*) as ��פH��,
    CAST(sum(case when sc.score>=60 then 1 else 0 end)/CAST(Count(*) as float)as numeric(20,2))as �ή�v,
    CAST(sum(case when sc.score>=70 and sc.score<80 then 1 else 0 end)/CAST(Count(*) as float)as numeric(20,2))as �����v,
    CAST(sum(case when sc.score>=80 and sc.score<90 then 1 else 0 end)/CAST(Count(*) as float)as numeric(20,2))as �u�}�v ,
    CAST(sum(case when sc.score>=90 then 1 else 0 end)/CAST(Count(*) as float)as numeric(20,2))as �u�q�v
    from sc inner JOIN course on sc.CId=course.CId
    group by sc.CId 
    )a1
on course.CId = a1.CId
order by a1.��פH�� desc, a1.CId asc
