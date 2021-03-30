--48.按照出生日期來算年齡

SELECT *,FLOOR(DATEDIFF(DY,s.Sage,GETDATE())/365.25)as 學生年齡
from student s