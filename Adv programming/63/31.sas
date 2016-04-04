data one;
input x $ y@;
datalines;
a 10
a 3
a 14
b 9
;
data two;
input sumy@;
datalines;
36
;
data work.combine;
	if _n_=1 then set work.two;
	set work.one;
run;

proc print;
run;

data work.combine1;
	set work.two;
	set work.one;
run;

proc print;
run;