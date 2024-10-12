select dep.depNum, dep.depName, COUNT(de.depName) as Number from tblEmployee emp
	left join tblDependent de on emp.empSSN = de.empSSN
	join tblDepartment dep on emp.depNum = dep.depNum
	group by dep.depNum, dep.depName	