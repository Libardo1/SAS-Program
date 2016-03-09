data WORK.TEST;
input Name $ Age;
datalines;
John +35
run;
proc print;
run;