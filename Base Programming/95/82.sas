data data1;
	input num1 char1$;
	datalines;
	1 a
	2 b
	;
run;

data data2;
	input num1 char2$;
	datalines;
	3 c
	4 d
	5 e
	;
run;

data data_total;
	set data1;
	set data2;
run;

proc print;
run;