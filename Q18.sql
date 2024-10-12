select t.depNum, t.depName, t.number from
(
	select dep.depNum, dep.depName, COUNT(de.depName) as number from tblDependent de
	join tblEmployee emp on emp.empSSN = de.empSSN
	join tblDepartment dep on emp.depNum = dep.depNum
	group by dep.depNum, dep.depName	
) as T
where t.number = (select MAX(T1.number) from (
	select dep.depNum, dep.depName, COUNT(de.depName) as number from tblDependent de
	join tblEmployee emp on emp.empSSN = de.empSSN
	join tblDepartment dep on emp.depNum = dep.depNum
	group by dep.depNum, dep.depName	) as T1
)