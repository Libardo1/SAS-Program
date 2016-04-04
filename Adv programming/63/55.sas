data one;
	input year qtr budget;
	datalines;
	2001 3 500
	2001 4 400
	2003 1 350
	;
data two;
	input year qtr sales;
	datalines;
	2001 4 300
	2002 1 600
	;
run;
proc sql;
	select 
        two.*,
		budget
	from
	 work.one
	 full join
	 work.two
	on one.year = two.year
	;
quit;

proc sql;
	select 
        two.*,
		budget
	from
	 work.one
	 right join
	 work.two
	on one.year = two.year
	;
quit;

proc sql;
select two.*, budget
from one right join two
on one.year = two.year;
quit;