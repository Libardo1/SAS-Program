/*heheda
heheda
heheda */
libname library '/folders/myfolders';
proc format lib = library;
	value fishfmt
	1 = 'a'
	2 = 'b'
	3 = 'c';
run;

data fish;
	infile "/folders/myfolders/Base Programming/fish.txt";
	input trt y z;
	format trt fishfmt.;
libname library '/folders/myfolders';
/*
proc format lib = library fmtlib;
run;
*/
proc report data = fish nowd;
run;

proc print data = fish;
	sum trt;
proc sort data = fish out = data1;
	by trt;
title1 "hehehe";
title3 "heheda";
proc print data = data1 label;
	where y > 18;
	sum y;
	by trt;
	id trt;
	pageby trt;
run;