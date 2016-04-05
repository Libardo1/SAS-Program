data visit1;
	input id Expense;
	datalines;
	001 500
	001 400
	003 350
	;
run;

data visit2;
	input id Cost;
	datalines;
	001 300
	002 600
	;
run;

proc sql;
select 
   Id, 
   sum(Expense) label='COST'    
from WORK.VISIT1
group by 1    
union all
select 
   Id, 
   sum(Cost)
from WORK.VISIT2
group by 1    
order by 1,2 
;      
/* D */
proc sql;
select 
   Id, 
   sum(Expense) as Cost 
from WORK.VISIT1
group by Id   
outer union corr
select 
   Id, 
   sum(Cost) as Cost
from WORK.VISIT2
group by Id   
order by 1,2  
;


