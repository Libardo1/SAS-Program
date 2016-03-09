data temp;
input group x;
cards;
1 23
1 34
1 .
1 45
2 78
2 92
2 45
2 89
2 34
2 76
3 31
4 23
4 12
;
run;
/**************************************************
The automatic variables first.group and last.group
are not saved with the data set. Here we write them
to data set variables to show their contents.
**************************************************/
data new;
	set temp;
	by group;
	first=first.group;
	last=last.group;
	first1=first.x;
	last1=last.x;

	if first.group = 1 then payroll = 0;
	payroll + x;

run;
proc print;

data single dup;
set temp;
by group;
if first.group and last.group then output single;
else output dup;
run;
/**************************************************
We may also want to do data set processing within
each by group. In this example we construct the
cumulative sum of the variable X within each group.
**************************************************/
data cusum(keep=group sum);
set temp;
by group;
if first.group then sum=0;
sum+x;
if last.group then output;
run;
proc print data=cusum noobs;
title 'Sum of X within each group';
run;

proc print data=temp;
title 'All data with X summed within each group';
by group;
sum x;
sumby group;
run;
proc means data=temp sum;
by group;
run;
title 'Raw data along with first.group and last.group';
run;