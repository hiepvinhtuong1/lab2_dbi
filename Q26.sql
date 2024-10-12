select pro.proNum, pro.proName, count(wo.empSSN) numbers from tblProject pro
join tblWorksOn wo on pro.proNum = wo.proNum
group by pro.proNum, pro.proName
