--13.�d�ߩM" 01 "�����P�Ǿǲߪ��ҵ{�����ۦP����L�P�Ǫ���T

-- ���פ@�˪�
-- ex: '01'��A,B�ҵ{�A'02'��A,B,C�ҵ{�]�|�C�J���G
SELECT * 
FROM student
Where SId in
    (SELECT SId FROM sc WHERE CId in 
        (SELECT CId FROM sc WHERE SId='01') 
    GROUP BY SId 
    having count(*) = (SELECT count(*) FROM sc WHERE SId='01')
    )

-- �����@��
-- ���I: 1.���ư�'�ؼФH'�S�ת��ҵ{���ǥ͡C
--       2.�έp�S�Q�ư����H���׽Ҽƶq�A�Y�P'�ؼФH'�ת��ҵ{�ƶq�ۦP�ɡA�Y�׽ҧ����ۦP�C
--       ex:��A,B,C,D �|��ҡA'01'�פFA,B�ҡA�h����C,D�Ҫ��H�i���ư��A
--          �{�b�M��� '01'�פFA,B��(�@2��)�B'02'�פFA��(�@1��)�B'03'�פFB��(�@1��)�B'04'�פFA,B��(�@2��)
--          �i�o'01'�P'04'�׽ҧ����ۦP�C
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
