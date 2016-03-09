options ls = 74 ps = 50 nodate;
data insulin;
input day trt $ y;
cards;
1 A 69
1 A 64
1 B 70
1 B 75
1 C 64
1 C 64
1 D 81
1 D 77
2 A 57
2 A 53
2 B 54
2 B 47
2 C 46
2 C 49
2 D 68
2 D 66
3 A 64
3 A 68
3 B 61
3 B 62
3 C 54
3 C 62
3 D 76
3 D 70
;
proc means data = insulin mean std;

proc sort data = insulin out = sortdn;
	key trt / ascending;

proc univariate data = sortdn plot;
	var y;
	by trt;
	qqplot;

proc timeplot data = sortdn;
	class trt day;
	plot y = '*' / ref = 0 joinref;
	id trt day;

proc mixed data = sortdn;
	class trt day;
	model y = trt day / residual outp = t;
	random trt(day);
	lsmeans trt day / diff;
	
proc plot data = t;
	plot studentresid * pred / vref = 0 vpos = 20 hpos = 60;
	run;


run;