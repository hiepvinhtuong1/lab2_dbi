select dep.depNum, dep.depName, coalesce(sum(wo.workHours),0) Total from tblDepartment dep
left join tblProject p on p.depNum = dep.depNum
left join tblWorksOn wo on p.proNum = wo.proNum
group by dep.depNum, dep.depName


