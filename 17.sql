--17.按平均成績從高到低顯示所有學生的所有課程的成績以及平均成績
select sc.*,a1.avgScore from sc 
inner join (
    select sc.SId,avg(sc.score)avgScore from sc 
    group by sc.SId
    )a1 
on sc.SId=a1.SId
order by a1.avgScore desc