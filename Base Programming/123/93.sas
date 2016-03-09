data houses;
	input style$ bedrooms baths price;
	datalines;
CONDO 2 1.5 80050
CONDO 3 2.5 79350
CONDO 4 2.5 127150
CONDO 2 2.0 110700
RANCH 2 1.0 64000
RANCH 3 3.0 86650
RANCH 3 1.0 89100
RANCH 1 1.0 34550
SPLIT 1 1.0 65850
SPLIT 4 3.0 94450
SPLIT 3 1.5 73650
TWOSTORY 4 3.0 107250
TWOSTORY 2 1.0 55850
TWOSTORY 2 1.0 69250
TWOSTORY 4 2.5 102950 

proc sort data = houses out = houses;
by style;
run;

proc print data = houses;
id style;
var bedrooms baths price;
run;
