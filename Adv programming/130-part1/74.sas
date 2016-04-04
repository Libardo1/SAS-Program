%macro one(input);
%two
%put the value is &date;
%mend;
%macro two;
data _null_;
call symput('date', '12SEP2008');
run;
%mend;
%let date = 31DEC2006;
%one(&date)
