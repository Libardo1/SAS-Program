data day;
	input day$;
	datalines;
	09JAN2010
	12JAN2010
;
run;

data day1;
	set day;
	day1 = input(day, date9.);
	day2 = put(day1, downame.);

run;

proc print;
run;