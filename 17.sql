--17.���������Z�q����C��ܩҦ��ǥͪ��Ҧ��ҵ{�����Z�H�Υ������Z
select sc.*,a1.avgScore from sc 
inner join (
    select sc.SId,avg(sc.score)avgScore from sc 
    group by sc.SId
    )a1 
on sc.SId=a1.SId
order by a1.avgScore desc