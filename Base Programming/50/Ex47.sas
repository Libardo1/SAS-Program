data monthlysales;
	infile '/folders/myfolders/Base Programming/50/hehe1.txt';
	input year 4. @;
	do i = 1 to 12;
		input sales @;
		output;
	end;
	drop i;
run;

data totalsales;
	set monthlysales(keep = year sales);
	array monthsales{12};
		do i = 1 to 12;
			monthsales{i} = sales;
		end;
	cnt + 1;
	monthsales{cnt} = sales;
run;

proc print data = totalsales;
run;