select de.depSex, COUNT(de.depName) as Number from tblDependent de
group by de.depSex
