--43.查詢各學生的年齡，只按年份來算
select * ,DATEDIFF(YEAR,student.Sage,GETDATE()) as 學生年齡 from student