data weather;
infile datalines missover;
input temp1-temp5;
datalines;
97.9 98.1 98.3
98.6 99.2 99.1 98.5 97.5
96.2 97.3 98.3 97.6 96.5
;
proc print data = weather;
run;