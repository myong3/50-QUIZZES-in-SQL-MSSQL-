--18.琩高Θ罿程蔼だ程だ㎝キАだ
--Α陪ボ揭祘 ID揭祘 name程蔼だ程だキАだの瞯い单瞯纔▆瞯纔╭瞯
--の>=60い单70-80纔▆80-90纔╭>=90
--璶―块揭祘腹㎝匡计琩高挡狦计逼璝计揭祘腹ど逼

select course.Cname,a1.* 
from course 
inner JOIN 
    (
    select 
    sc.CId,
    --course.Cname,
    MAX(score)as 程蔼だ,
    MIN(score)as 程だ,
    AVG(score) as キАだ,
    Count(*) as 匡计,
    CAST(sum(case when sc.score>=60 then 1 else 0 end)/CAST(Count(*) as float)as numeric(20,2))as の瞯,
    CAST(sum(case when sc.score>=70 and sc.score<80 then 1 else 0 end)/CAST(Count(*) as float)as numeric(20,2))as い单瞯,
    CAST(sum(case when sc.score>=80 and sc.score<90 then 1 else 0 end)/CAST(Count(*) as float)as numeric(20,2))as 纔▆瞯 ,
    CAST(sum(case when sc.score>=90 then 1 else 0 end)/CAST(Count(*) as float)as numeric(20,2))as 纔╭瞯
    from sc inner JOIN course on sc.CId=course.CId
    group by sc.CId 
    )a1
on course.CId = a1.CId
order by a1.匡计 desc, a1.CId asc
