select pro.proNum, pro.proName, count(wo.empSSN) Number from tblProject pro
left join tblWorksOn wo on pro.proNum = wo.proNum
group by pro.proNum, pro.proName
