data donors1;
	input ID TYPE $ Units ;
	cards;
	2304 O 16
	1129 A 48
	1129 A 50
	1129 A 57
	2486 B 63
;
data donors2;
	input ID Code Units;
	cards;
	6488 65 27
	1129 63 32
	5438 62 39
	2304 61 45
	1387 64 67
;
proc sort data = donors1;
	by id;
run;
proc sort data = donors2;
	by id;
run;
data work.merged;
	merge donors1 donors2;
	by id;
run;
proc print data = donors1;
run;
proc print data = donors2;
run;
proc print data = merged;
run;