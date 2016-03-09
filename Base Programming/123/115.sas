data allmonths;
	input product $ month $ num_sold cost;
	datalines;
hehe jan 0 999999
;
run;	

data work.january;
set work.allmonths (keep=product month num_sold cost);
if month='jan' then output work.january;
sales=cost*num_sold;
keep product sales;
run;

proc print;
run;