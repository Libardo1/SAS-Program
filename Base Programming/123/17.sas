data employee;
	input fname$ age;
	datalines;
	Bruce 30
	Dan 35
	
	;
run;

data salary;
	infile datalines;
	input fname$ salary;
	datalines;
	Bruce 40000
	Bruce 35000
	Dan 37000
	Dan .
	;
run;


proc print data = salary;
run;


data empsalary;
merge employee(in = inemp)
	salary (in = insal);
by fname;
if inemp and insal;
run;

proc print data = empsalary;
run;

proc sort data=work.employee;
by descending fname;
proc print;
run;

proc sort data=work.salary;
by descending fname;
proc print;
run;
data work.empdata;
merge work.employee
work.salary;
by descending fname; /* Warning: by fname will cause an error message*/
run;