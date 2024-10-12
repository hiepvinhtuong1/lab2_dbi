select emp.empSSN, emp.empName, dep.depName from tblEmployee emp
left join tblDependent de on emp.empSSN = de.empSSN
join tblDepartment dep on dep.depNum =emp.depNum
group by emp.empSSN, emp.empName, dep.depName
having count(de.depName) = (
	select min(t1.number) from (
		select emp.empSSN, emp.empName, count(de.depName) as number from tblEmployee emp
	left join tblDependent de on emp.empSSN = de.empSSN
	group by emp.empSSN, emp.empName
	) as t1
)

