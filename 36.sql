--36.學生成績不重複情況下，查詢選修「張三」老師所授課程的學生中，成績最高的學生資訊及其成績

select s.*,a2.score from student s inner join
(select Top(1) SId,score from sc inner join
(select CId from course c inner join teacher t on c.TId = t.TId where t.Tname = '張三')a1
on sc.CId=a1.CId
order by score desc)a2
on s.SId = a2.SId