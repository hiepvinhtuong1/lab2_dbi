select dep.depNum, dep.depName from tblDepartment dep
where not exists (
	select 1 from tblEmployee emp1
	join tblDependent de1 on emp1.empSSN = de1.empSSN
	where emp1.depNum = dep.depNum
)

