select pro.proNum, pro.proName from tblLocation lo
join tblProject pro on lo.locNum = proNum
where lo.locName = N'TP Hồ Chí Minh';