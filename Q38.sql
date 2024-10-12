select emp.empSSN, emp.empName, count(de.depName) as Number from tblEmployee emp
left join tblDependent de on emp.empSSN = de.empSSN
group by emp.empSSN, emp.empName
having count(de.depName) = (
	select max(t1.number) from (
		select emp.empSSN, emp.empName, count(de.depName) as number from tblEmployee emp
	left join tblDependent de on emp.empSSN = de.empSSN
	group by emp.empSSN, emp.empName
	) as t1
)

