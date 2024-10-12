select emp.empSSN, emp.empName 
from tblEmployee emp
join tblEmployee sup 
on emp.supervisorSSN = sup.empSSN
where sup.empName = N'Mai Duy An';
