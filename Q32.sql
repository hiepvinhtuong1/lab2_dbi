select lo.locName, count(delo.depNum) numbers from tblLocation lo
join tblDepLocation delo on lo.locNum = delo.locNum
join tblDepartment dep on delo.depNum = dep.depNum
group by lo.locName