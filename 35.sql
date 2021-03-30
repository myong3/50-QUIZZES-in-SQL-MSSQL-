--35.求每門課程的學生人數

select CId,count(*) as 學生人數 from sc group by CId