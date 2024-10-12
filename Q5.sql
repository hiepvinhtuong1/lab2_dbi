select sup.empSSN, sup.empName from tblEmployee emp
join tblEmployee sup on emp.supervisorSSN = sup.empSSN
where emp.empName = N'Mai Duy An';