data allmonths;
	infile '/folders/myfolders/Base Programming/50/hehe1.txt';
	input year 4. @;
	do i = 1 to 12;
		input num_sold @;
		quarter = mod(i,4);
		if quarter = 0 then quarter = 4;
		output;
	end;
	drop i;
	
run;

proc sort data = allmonths;
	by quarter;
	
run;

data arrays;
	set allmonths(keep = quarter num_sold);
	if year = 1999;
	by quarter;
	array sold{4};
	if first.quarter then cnt = 1;
	sold{cnt} = num_sold;
	cnt + 1;
	if last.quarter then output;
run;

proc print data = arrays;
run;
