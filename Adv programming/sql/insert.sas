proc sql;
create table work.mechanicslevel3_new as
select *
from zzz.mechanicslevel3;

proc sql;
insert into work.mechanicslevel3_new
select empid, jobcode, salary
from zzz.mechanicslevel2
where empid = '1653';
select *
from work.mechanicslevel3_new;

proc print data = work.mechanicslevel3_new;
run;