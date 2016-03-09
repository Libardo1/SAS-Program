data WORK.DATE_INFO;
	X='04jul2005'd;
	y = '04jul2005';
	Day=day(x);
	MonthOfYear=month(x);
	Year=year(y);
run;
proc print data = date_info;
run;