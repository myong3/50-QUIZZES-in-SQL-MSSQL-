--8.�d�����Z���ǥ͸�T

select * from Student 
where exists (select SC.SId from SC where Student.SId = SC.SId);

select * from Student
where Student.SId in (select SC.SId from SC);