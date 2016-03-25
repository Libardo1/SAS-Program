proc sql undo_policy = none;
	create table work.discount4
	(Destination char(3),
	BeginDate num Format=date9.,
	EndDate num format=date9.,
	Discount num,
	constraint ok_discount check (discount le .5),
	constraint notnull_dest not null(destination));
	
proc sql undo_policy = required;
insert into work.discount4
values('CDG','03MAR2000'd,'10MAR2000'd,.15)
values('LHR','10MAR2000'd,'12MAR2000'd,.55);

proc print data = work.discount4;
run;	
	
	
proc sql undo_policy = none;
describe table constraints work.discount4;
insert into work.discount4
values('CDG','03MAR2000'd,'10MAR2000'd,.15)
values('LHR','10MAR2000'd,'12MAR2000'd,.55);

proc print data = work.discount4;
run;