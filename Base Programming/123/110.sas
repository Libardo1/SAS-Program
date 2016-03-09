data employee;
	input employee_name $ 1-4;
	if employee_name = 'Ruthh' then input idnum 10-11;
	else input age 7-8;
	datalines;
Ruth  39 11
Jose  32 22
Sue   30 33
John  40 44
;
run;
proc print;
run;