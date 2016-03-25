proc sql;
create table work.payrollmaster_new as
select *
from zzz.payrollmaster;


proc sql;
update work.payrollmaster_new
set salary=salary*11.05
where jobcode like '__1';
update work.payrollmaster_new
set salary = 0
where jobcode like '%2';


proc print data = payrollmaster_new;
run;

proc sql;
update work.payrollmaster_new
set salary=
case
when substr(jobcode,3,1)='1'
then 111
when substr(jobcode,3,1)='2'
then 222
when substr(jobcode,3,1)='3'
then 333
else 888
end;

proc print data = payrollmaster_new;
run;


proc sql;
update work.payrollmaster_new
set salary=
case substr(jobcode,3,1)
when '1'
then 1.05
when '2'
then 1.10
when '3'
then 1.15
else 1.08
end;
alter table payrollmaster_new
      modify salary num format=dollar9.2
	  modify salary label = "hehe"
      add Bonus num format=comma10.2,
		Level char(3) label = "heheda"
      drop empID, DateOfHire;


proc print data = payrollmaster_new label;
run;