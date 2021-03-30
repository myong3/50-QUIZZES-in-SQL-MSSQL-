--13.查詢和" 01 "號的同學學習的課程完全相同的其他同學的資訊

-- 有修一樣的
-- ex: '01'修A,B課程，'02'修A,B,C課程也會列入結果
SELECT * 
FROM student
Where SId in
    (SELECT SId FROM sc WHERE CId in 
        (SELECT CId FROM sc WHERE SId='01') 
    GROUP BY SId 
    having count(*) = (SELECT count(*) FROM sc WHERE SId='01')
    )

-- 完全一樣
-- 重點: 1.先排除'目標人'沒修的課程的學生。
--       2.統計沒被排除的人之修課數量，若與'目標人'修的課程數量相同時，即修課完全相同。
--       ex:有A,B,C,D 四堂課，'01'修了A,B課，則有修C,D課的人可先排除，
--          現在清單剩 '01'修了A,B課(共2課)、'02'修了A課(共1課)、'03'修了B課(共1課)、'04'修了A,B課(共2課)
--          可得'01'與'04'修課完全相同。
select *
from student 
where SId in 
    (select SId from sc where SId not in
        (select SId from sc where CId not in 
            (select CId from sc where SId='01')
        )
    group by SId 
    having count(*) = (select count(*) from sc where SId='01')
    )
