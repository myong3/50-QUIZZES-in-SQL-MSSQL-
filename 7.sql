--7.�d�ߩҦ��P�Ǫ��ǥͽs���B�ǥͩm�W�B����`�ơB�Ҧ��ҵ{�����Z�`�M
select s.SId,s.Sname,ISNULL(a1.num,0) as num,ISNULL(a1.total,0)as total from Student s
left join
(select SId,count(*)as num ,sum(score)as total from SC group by SId) a1
on s.SId=a1.SId

