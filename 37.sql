--37.�ǥͦ��Z�i�୫�Ʊ��p�U�A�d�߿�סu�i�T�v�Ѯv�ұ½ҵ{���ǥͤ��A���Z�̰����ǥ͸�T�Ψ䦨�Z

select s.*,a2.score 
from student s 
inner join
(
    select sc.* 
    from sc inner join 
    (
        select CId,max(sc.score) as maxScore
        from sc
        group by CId
        having CId in 
        (
            select CId 
            from course c 
            inner join teacher t 
            on c.TId = t.TId 
            where t.Tname = '�i�T'
         )
    )a1
    on sc.CId = a1.CId
    where sc.score = a1.maxScore
)a2
on s.SId = a2.SId