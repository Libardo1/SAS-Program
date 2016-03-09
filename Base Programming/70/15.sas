data crackman;
	input x y@@;
	if _error_=0 then k=1;
	e=_error_;
	keep x y k _error_ e;
	datalines;
	1 2 3 4 5 6 7 8 9 0
	;
run;
proc print;
run;