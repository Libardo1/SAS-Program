data WORK.EMPLOYEE;
format startdate mmddyy10.;
input 
        @1  FirstName $
        @15 StartDate 
        @25 Department $;
        cards;
Xing           2 19 2004 ACCT
Bob            5 22 2004 MKTG
Jorge          3 14 2004 EDUC
;
run;
proc print;
run;
