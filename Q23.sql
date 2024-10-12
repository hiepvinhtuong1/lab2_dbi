select emp.empSSN, emp.empName, dep.depName from tblEmployee  emp
join tblDepartment  dep on emp.depNum = dep.depNum
where emp.empSSN NOT IN (select empSSN from tblWorksOn)
