--34.查詢課程編號為 01 且課程成績在 80 分及以上的學生的學號和姓名
select s.SId,s.Sname 
from student s 
inner join sc 
on s.SId = sc.SId 
where sc.CId = '01' 
and sc.score >= 80