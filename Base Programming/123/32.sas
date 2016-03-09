data students;
	input name$ age;
	datalines;
Alfred 14
Alice13
Barbara 13
Carol 14
;
run;

proc print;
run;

data s;
	set students;
	file "/folders/myfolders/Base Programming/123/32b.txt";
	put name $15. @5 age 2.;
run;