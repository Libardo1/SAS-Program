data state_data;
	length state $10;
	input hehe dada state$;
	datalines;
	12 43 Illinois
	22 33 WI
	;
run;
proc print;
run;

dat work.il_corn;
set state_data;
if state = 'Illinois';
run;
proc print data = il_corn;
run;