data one;
input rep $ cost;
datalines;
	smith 200
	smith 400
	jones 100
	smith 600
	jones 100
	;

proc sql;
	select	Rep, avg(Cost) as Average
	from work.one
	
	group by Rep
	having Average > (select avg(cost) from one)
	;
quit;

PROC SQL;
 DESCRIBE TABLE one
 DICTIONARY.Columns;
QUIT;

PROC SQL;
 DESCRIBE TABLE one
 DICTIONARY.tables;
QUIT;
