data department;
	infile cards;
	length bla $10; 
	input empid$ bla$; /*Automatically set length of empid to 8 */
	cards;
1 b
12 bb
123456789012345678 923456789012345678
;
run;
proc print;
var empid bla;
run;

data hehe;
	set department;
	retain city 'mememememememememeem';
	state = 'dadadadaadadadadadadad';
run;
proc print;
run;

data WORK.ACCOUNTING;
	set WORK.DEPARTMENT;
	length empid $6; /*Length of empid has already been set to 8*/
        CharEmpid=EmpId; 
        charbla = bla; /*Length of charbla is the same as bla, which is 10*/
run;

proc print data = accounting;
var empid charempid bla charbla;
run;

data WORK.ACCOUNTING;
	length empid $6; /*change the Length of empid to 6*/
	set WORK.DEPARTMENT;
        CharEmpid=EmpId; 
        charbla = bla; /*Length of charbla is the same as bla, which is 10*/
run;

proc print data = accounting;
var empid charempid bla charbla;
run;