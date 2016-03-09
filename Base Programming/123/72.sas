data work.test;
First = 'Ipswich, England';
City = substr(First,1,7);
City_Country= City!!'; '!!'England';
aa = City || 'US';
run;
proc print;
run;

data test1;
First = 'Ipswich, England';
City_Country= substr(First,1,7)!!', '!!'England';
run;
proc print;
run;