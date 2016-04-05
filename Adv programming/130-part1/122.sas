data students;
	input obs id name$;
	datalines;
1 12345 Hans1
2 12345 Hans2
3 67890 Bruno1
4 67890 Bruno2
5 54321 Nigel1
6 54321 Nigel2
7 9876  Suzy1
8 9876  Suzy2
9 11111 Jose
10 11111 Maria
;

proc sort data = students
out = students dupout = temp nodupkey;
by ID;
run;

proc print data= students;
run;

proc print data = temp;
run;