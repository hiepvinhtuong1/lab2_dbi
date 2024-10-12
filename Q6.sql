select lo.locNum, lo.locName from tblProject pro
join tblLocation lo on pro.locNum = lo.locNum
where pro.proName = N'ProjectA'