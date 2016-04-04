data one;
	input group $ SUM;
	datalines;
a 765
b 123
c 564
	;

data _null_;
	set one;
	call symput(group,SUM);
	stop; /*run only one time, only a is assigned*/
	run;
	
%put _all_;


