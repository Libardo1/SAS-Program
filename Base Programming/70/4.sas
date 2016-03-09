data WORK.DATE_INFO;
	MoNth='02';
	Yr=1960;
	X=mdy(month,28,Yr) ;
	Y=mdy(Month,30,Yr) ;
run;
proc print data=date_info;
run;