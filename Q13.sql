select emp.empName, dep.depName, de.depRelationship from tblDependent de
join tblEmployee emp on de.empSSN = emp.empSSN
join tblDepartment dep on emp.depNum = dep.depNum
where (dep.depName = N'Phòng Nghiên cứu và phát triển') and ((YEAR(GETDATE()) - year(de.depBirthdate)) > 18)