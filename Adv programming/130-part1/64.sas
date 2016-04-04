data one;
	input id name$;
	datalines;
	112 smith
	243 wei
	457 jones
	;
data two;
	input id salary;
	datalines;
	243 150000
	355 45000
	523 75000
	;

data combine;
	merge one two;
	by id;
	run;
proc print;
run;


/* A */
 proc sql;
create table combine as
select coalesce(one.id, two.id) as id, name, salary
from one full join two
on one.id = two.id; 
quit;
proc print;
run;


/* B. */
proc sql;
create table combine as
select one.id, name, salary
from one inner join two
on one.id = two.id;
quit;
proc print;
run;

/* C. */ 
proc sql;
create table combine as
select coalesce(one.id, two.id) as id, name, salary
from one, two
where one.id = two.id; 
quit;
proc print;
run;

/*D. */
proc sql;
create table combine as
select one.id, name, salary
from one full join two
on one.id = two.id; 
quit;
proc print;
run;

/* others */
proc sql;
create table combine0 as
select one.id, name, salary
from one left join two
on one.id = two.id; 
quit;
proc print;
run;


proc sql;
create table combine1 as
select one.id, name, salary
from one right join two
on one.id = two.id; 
quit;
proc print;
run;

proc sql;
create table combine2 as
select * from one
outer union corr
select * from two; 
quit;
proc print;
run;


proc sql;
create table combine3 as
select * from one
outer union
select * from two; 
quit;
proc print;
run;