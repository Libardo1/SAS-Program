data course;
	input exam;
	datalines;
	50.1
	;
run;
proc format;
value score (fuzz = 1) 1 - 50 = ‘Fail’
	51 - 100 = ‘Pass’;
run;
proc report data =course nowd;
column exam;
define exam / display format=score.;
run;