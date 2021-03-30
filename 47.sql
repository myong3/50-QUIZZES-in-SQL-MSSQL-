--47.查詢下月過生日的學生

select * 
from student s
where MONTH(s.Sage) = MONTH(GETDATE())+1