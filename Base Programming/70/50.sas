data one;
	input id char1$;
	datalines;
  111  A 
  158  B 
  329  C 
  644  D 
  ;
  run;

data two;
	input id char2$;
	datalines;
111  E 
538  F 
644  G 
;
run;

data both;
set one;
set two;

run;
proc print;
run;

data both;
set one two;
by id;
run;
proc print;
run;
