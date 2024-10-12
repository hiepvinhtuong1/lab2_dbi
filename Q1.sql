select emp.empSSN, emp.empName, emp.depNum, dep.depName from tblEmployee emp
join tblDepartment dep on Emp.empSSN = Dep.mgrSSN
where dep.depName = N'Phòng Nghiên cứu và phát triển';