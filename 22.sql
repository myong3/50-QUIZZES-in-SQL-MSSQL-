--22.查詢每門課程被選修的學生數
select CId,count(*)as studentNum from sc
group by CId