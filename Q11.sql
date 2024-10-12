select pro.proNum, pro.proName, dep.depName from tblProject pro
join tblLocation lo on pro.locNum = lo.locNum
join tblDepartment dep on dep.depNum = pro.depNum
where lo.locName = N'TP Hồ Chí Minh'