data employees;
	input years_service;
	datalines;
	1
	2
	.
	;
run;

proc format;
	value hehe
		low - 1 = 'a'
		1 <- 2 = 'b'
		other = 'c';
run;

data test;
set employees;
format years_service hehe.;
if 2 le years_service le 10 then
amount=1000;
else if years_service gt 10 then
amount=2000;
else
amount=0;
amount_per_year=years_service/amount;
run;

proc print;
run;