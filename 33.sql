--33.查詢存在不及格的課程

select CId from sc where score < 60 group by CId