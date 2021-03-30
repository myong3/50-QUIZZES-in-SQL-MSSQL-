--9.查詢「李」姓老師的數量
select count(*)
from Teacher
where Tname like '李%'