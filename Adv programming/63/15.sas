data crackman;
input rep $ cost@;
datalines;
	smith 200
	smith 400
	smith 100
	jones 100
	smith 600
	jones 100
	;
	run;

proc sql;
	select
		Rep,
		avg(Cost)
		from crackman
	order by rep
	;
quit;
