select dep.depName, dep.depBirthdate, emp.empName from tblDependent dep
join tblEmployee emp on dep.empSSN = emp.empSSN
where dep.depSex = 'M'