select emp.empName, de.depName, de.depRelationship from tblDependent de
join tblEmployee emp on de.empSSN = emp.empSSN
join tblDepartment dep on dep.depNum = emp.depNum
where (de.depSex = 'F') and (dep.depName = N'Phòng Nghiên cứu và phát triển')
