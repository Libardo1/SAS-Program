data test;
infile datalines;
input@1 date mmddyy10.;
if date='01Jan2000'd then event='january 1st';
datalines;
01012000
;
run;

proc print;
run;