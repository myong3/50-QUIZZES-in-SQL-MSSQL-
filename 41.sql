--41.檢索至少選修兩門課程的學生學號

select SId,count(CId) as 選修數量 from sc group by SId having count(CId)>1