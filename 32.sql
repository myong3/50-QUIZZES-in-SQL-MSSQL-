--32.查詢任何一門課程成績在 70 分以上的姓名、課程名稱和分數

select s.SId,s.Sname,c.Cname,sc.score 
from student s 
inner join 
sc 
on s.SId = sc.SId 
inner join 
course c 
on sc.CId = c.CId 
where score >= 70 
order by sc.CId, s.SId