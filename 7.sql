--7.查詢所有同學的學生編號、學生姓名、選課總數、所有課程的成績總和
select s.SId,s.Sname,ISNULL(a1.num,0) as num,ISNULL(a1.total,0)as total from Student s
left join
(select SId,count(*)as num ,sum(score)as total from SC group by SId) a1
on s.SId=a1.SId

