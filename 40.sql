--40.統計每門課程的學生選修人數（超過 5 人的課程才統計）
select CId, count(SId) as 學生選修人數 from sc group by CId having count(SId)>5