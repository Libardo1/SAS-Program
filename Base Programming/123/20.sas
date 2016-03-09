data employee;
	input fname$ age;
	datalines;
	Brucebbb 30
	Dan 35
	
	;
run;

data salary;
	infile datalines;
	input fname$ salary;
	datalines;
	Brucebbbbb 4234567890
	Brucebbbbb 35000
	Dan 37000
	Dan .
	;
run;
proc print;
run;

proc sort data=work.employee;
by descending fname;
proc sort data=work.salary;
by descending fname;

data work.empdata;
merge work.employee
work.salary;
by descending fname; /* Warning: by fname will cause an error message*/
run;
proc print;
run;