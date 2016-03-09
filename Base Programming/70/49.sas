data charity(drop = qtr1);
	array contrib{4} qtr1 qtr2 qtr3 qtr4;
	do qtr = 1 to 4;
		contrib{qtr} = contrib{qtr} * 1.25;
	end;
run;
proc print;
run;