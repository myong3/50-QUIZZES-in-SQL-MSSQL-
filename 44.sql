--44.�d�ߥ��g�L�ͤ骺�ǥ�

select *
from student
where DATENAME (
                week, convert(
                            datetime, 
                            convert(varchar,year(GETDATE())) + replace(right(convert(varchar,student.Sage,111),6),'/','')
                            )
                ) = DATENAME (week,GETDATE())

-- ���o�ͤ��� ��� MMdd
select replace(right(convert(varchar,student.Sage,111),6),'/','')
from student

-- ���o��~�ͤ��� yyyyMMdd
select convert(varchar,year(GETDATE())) + replace(right(convert(varchar,student.Sage,111),6),'/','')
from student

-- ���o��~�ͤ�b�ĴX�P
select DATENAME (
                week, convert(
                            datetime, 
                            convert(varchar,year(GETDATE())) + replace(right(convert(varchar,student.Sage,111),6),'/','')
                            )
                )
from student

-- ���o��Ѧb�ĴX�P
select DATENAME (week,GETDATE())
--------------------------------------------------------------
--�H�P�鬰�Ĥ@��
-- ����
DECLARE @today DATETIMEOFFSET = getdate()
-- ���P��
DECLARE @thisSunday DATETIMEOFFSET = DATEADD(day,-1,DATEADD(ww, DATEDIFF(ww, 0, @today ), 0))
-- ���P��
DECLARE @thisSaturday DATETIMEOFFSET = DATEADD(day,5,DATEADD(ww, DATEDIFF(ww, 0, @today ) , 0))

SELECT @today AS 'Today'
SELECT @thisSunday 'This Sunday'
SELECT @thisSaturday'Next Saturday'


