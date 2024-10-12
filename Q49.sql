select emp.empSSN, emp.empName from tblEmployee emp
join tblDepartment dep on emp.depNum = dep.depNum
where dep.depName = N'Phòng Nghiên cứu và phát triển' and  not exists (
	select 1 from tblDependent de
	where de.empSSN = emp.empSSN
)