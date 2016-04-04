data one;
	input division sales;
	datalines;
	a 1234
	a 3654
	b 5678
	;

data _null_;
set one;
by division;
if first.division then do;
%let mfirst = sales;
end;
run;

%put &mfirst;