select pro.proNum, pro.proName, dep.depName from tblProject pro
join tblDepartment dep on pro.depNum = dep.depNum
where pro.proName = 'ProjectB'