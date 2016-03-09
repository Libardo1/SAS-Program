data one;
INPUT Revenue2008 Revenue2009 Revenue2010;
   DATALINES;
1.2 1.6 2.0
;
;run;
proc print;run;
data WORK.one1;
     set WORK.ONE;
     Total=mean(of rev:);
  run;
  proc print;run;

data two;
input _09rev _10rev _11rev;
datalines;
1.2 1.5 2.1
;
run;
data two1;
	set two;
	total = mean(of _:);
run;
proc print;
run;