data sales;
input id$ SalesJan FebSales MarchAmt;
datalines;
W6790 50 400 350
W7693 25 100 125
W1387 . 300 250
;
run;

proc format;
	value $hehe
	'W6790', 'W7693' = 'a'
	'W1387' = 'b';
run;

data WORK.QTR1;
set WORK.SALES;
format id $hehe.;
array month{3} SalesJan FebSales MarchAmt;
Qtr1 = sum(of month{*});
qtr2 = month{1} + month{2} + month{3};
Qtr3 = sum(of month{3});
run;
proc print;run;