--30.琩高揭祘嘿计厩だ计 60 厩ネ﹎㎝だ计

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
        where Cname = '计厩' 
        and sc.CId=c.CId
     )
    and score < 60
)a
on s.SId = a.SId

select student.Sname, sc.score from student, sc, course
where student.SId = sc.SId
and course.CId = sc.CId
and course.Cname = '计厩'
and sc.score < 60;