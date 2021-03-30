--8.查有成績的學生資訊

select * from Student 
where exists (select SC.SId from SC where Student.SId = SC.SId);

select * from Student
where Student.SId in (select SC.SId from SC);