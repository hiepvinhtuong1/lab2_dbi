select dep.depNum, dep.depName, count(pro.proNum) Number from tblDepartment dep
left join tblProject pro on dep.depNum = pro.depNum
group by dep.depNum, dep.depName
