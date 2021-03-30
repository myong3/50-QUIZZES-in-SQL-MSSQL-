--45.查詢下週過生日的學生

select *
from student
where DATENAME (
                week, convert(
                            datetime, 
                            convert(varchar,year(GETDATE())) + replace(right(convert(varchar,student.Sage,111),6),'/','')
                            )
                ) = DATENAME (week,GETDATE()) + 1



-- 取得生日日期 月日 MMdd
select replace(right(convert(varchar,student.Sage,111),6),'/','')
from student

-- 取得當年生日日期 yyyyMMdd
select convert(varchar,year(GETDATE())) + replace(right(convert(varchar,student.Sage,111),6),'/','')
from student

-- 取得當年生日在第幾周
select DATENAME (
                week, convert(
                            datetime, 
                            convert(varchar,year(GETDATE())) + replace(right(convert(varchar,student.Sage,111),6),'/','')
                            )
                )
from student

-- 取得當天的下周在第幾周
select DATENAME (week,GETDATE()) + 1