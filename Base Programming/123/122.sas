data test;
infile datalines;
input @1 salary 6.;
if _error_ then description='problems';
else description='No Problems';
datalines;
$1234
;
run;

proc print;
run;