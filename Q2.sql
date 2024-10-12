select pro.proNum, pro.proName, depName from tblDepartment dep
join tblProject pro on pro.depNum = dep.depNum
where dep.depName = N'Phòng Nghiên cứu và phát triển'