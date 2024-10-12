select dep.depNum, dep.depName, count(delo.locNum) numbers from tblLocation lo
join tblDepLocation delo on lo.locNum = delo.locNum
join tblDepartment dep on delo.depNum = dep.depNum
group by dep.depNum, dep.depName