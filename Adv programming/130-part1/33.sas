data one;
	input x y z w;
	datalines;
	144 288 3 4
	;

proc transpose data = one out = trans name = new;
	by x;
	var y z;
	run;

proc print;
run;