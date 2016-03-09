data BANKS;
input name$ rate;
datalines;
FirstCapital 0.0718
DirectBank 0.0721
VirtualDirect 0.0728
;
run;


data newbank;
do year = 1 to 2;
set banks;
capital + 5000;
end;
run;
proc print data = newbank label;
label name = fffname;
run;


data newbank;
do year = 1 to 100;
set banks;
capital + 5000;
output;
end;
run;
proc print;


data newbank;
do year = 1 to 3;
set banks;
capital + 5000;
output;
end;
output;
run;
proc print;
run;