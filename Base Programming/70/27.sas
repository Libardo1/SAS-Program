data temps;
input day month $ temp@;
datalines;
1 may 75
15 may 70
15 june 80
3 june 76
2 july 85
14 july 89
;
run;
proc sort data=WORK.TEMPS;
     by descending month day;
run;
proc print;
run;