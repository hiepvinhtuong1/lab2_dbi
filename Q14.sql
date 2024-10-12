select de.depSex, COUNT(de.depName) as 'Numbers' from tblDependent de
group by de.depSex
