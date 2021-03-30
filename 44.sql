--44.查詢本週過生日的學生

select *
from student
where DATENAME (
                week, convert(
                            datetime, 
                            convert(varchar,year(GETDATE())) + replace(right(convert(varchar,student.Sage,111),6),'/','')
                            )
                ) = DATENAME (week,GETDATE())

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

-- 取得當天在第幾周
select DATENAME (week,GETDATE())
--------------------------------------------------------------
--以周日為第一天
-- 今日
DECLARE @today DATETIMEOFFSET = getdate()
-- 本周日
DECLARE @thisSunday DATETIMEOFFSET = DATEADD(day,-1,DATEADD(ww, DATEDIFF(ww, 0, @today ), 0))
-- 本周六
DECLARE @thisSaturday DATETIMEOFFSET = DATEADD(day,5,DATEADD(ww, DATEDIFF(ww, 0, @today ) , 0))

SELECT @today AS 'Today'
SELECT @thisSunday 'This Sunday'
SELECT @thisSaturday'Next Saturday'


