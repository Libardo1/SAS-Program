data temp;
input x$ y;
cards;
P 52
P 45
A 13
A 56
R 34
R 12
R 78
;

proc print data = temp;
by X notsorted;
run;
