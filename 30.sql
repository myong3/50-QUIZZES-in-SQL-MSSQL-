--30.�d�߽ҵ{�W�٬��u�ƾǡv�A�B���ƧC�� 60 ���ǥͩm�W�M����

select s.Sname,a.score
from student s 
inner join 
(
    select * 
    from sc 
    where exists
    (
        select CId 
        from course c 
        where Cname = '�ƾ�' 
        and sc.CId=c.CId
     )
    and score < 60
)a
on s.SId = a.SId

select student.Sname, sc.score from student, sc, course
where student.SId = sc.SId
and course.CId = sc.CId
and course.Cname = '�ƾ�'
and sc.score < 60;