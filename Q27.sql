select pro.proNum, pro.proName, sum(wo.workHours) numbers from tblProject pro
join tblWorksOn wo on pro.proNum = wo.proNum
group by pro.proNum, pro.proName
