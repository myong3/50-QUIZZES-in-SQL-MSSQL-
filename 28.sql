--28.�d�ߨC���ҵ{���������Z�A���G���������Z���ǱƦC�A�������Z�ۦP�ɡA���ҵ{�s���ɧǱƦC

select CId,avg(score) average 
from sc 
group by CId
order by average desc,CId asc