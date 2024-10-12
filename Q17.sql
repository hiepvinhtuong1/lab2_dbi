select t.depNum, t.depName, t.number Number from
(
	select dep.depNum, dep.depName, COUNT(de.depName) as number from tblEmployee emp
	left join tblDependent de on emp.empSSN = de.empSSN
	join tblDepartment dep on emp.depNum = dep.depNum
	group by dep.depNum, dep.depName	
) as T
where t.number = (select MIN(T1.number) from (
	select dep.depNum, dep.depName, COUNT(de.depName) as number from tblEmployee emp
	left join tblDependent de on emp.empSSN = de.empSSN
	join tblDepartment dep on emp.depNum = dep.depNum
	group by dep.depNum, dep.depName	) as T1
)