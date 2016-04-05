data one;
input rep $ cost;
datalines;
	smith1 200
	smith2 400
	jones3 100
	smith4 600
	jones5 100
	;


proc sql;
create index rep on WORK.one;
quit;

proc datasets lib=work;
modify one;
index delete rep;
index create cost;
quit;

