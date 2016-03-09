data flowers;
infile datalines;
input type $ 1-5 +1 color $;
datalines;
daisyyellow
;
run;

proc print;
run;