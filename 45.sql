--45.�d�ߤU�g�L�ͤ骺�ǥ�

select *
from student
where DATENAME (
                week, convert(
                            datetime, 
                            convert(varchar,year(GETDATE())) + replace(right(convert(varchar,student.Sage,111),6),'/','')
                            )
                ) = DATENAME (week,GETDATE()) + 1



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

-- ���o��Ѫ��U�P�b�ĴX�P
select DATENAME (week,GETDATE()) + 1