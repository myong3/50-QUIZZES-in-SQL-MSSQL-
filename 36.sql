--36.�ǥͦ��Z�����Ʊ��p�U�A�d�߿�סu�i�T�v�Ѯv�ұ½ҵ{���ǥͤ��A���Z�̰����ǥ͸�T�Ψ䦨�Z

select s.*,a2.score from student s inner join
(select Top(1) SId,score from sc inner join
(select CId from course c inner join teacher t on c.TId = t.TId where t.Tname = '�i�T')a1
on sc.CId=a1.CId
order by score desc)a2
on s.SId = a2.SId