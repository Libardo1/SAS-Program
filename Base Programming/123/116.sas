data monthlysales;
	infile '/folders/myfolders/Base Programming/123/sas116.txt';
	input year product$ sales;
run;	

proc print;
run;


data work.totalsales;
set work.monthlysales(keep=year product sales);

array monthsales{12};
do i=1 to 12;
monthsales{i}=sales;
end;
ent+1;
monthsales{ent}=sales;
run;

proc print;
run;