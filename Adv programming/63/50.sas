data PILOTS;
input id name$ jobcode$ salary;
datalines;
   001  Albert   PT1       50000
   002  Brenda   PT1       70000
   003  Carl     PT1       60000
   004  Donna    PT2       80000
   005  Edward   PT2       90000
   006  Flora    PT3      100000
;

proc sql;
select 
   Jobcode,   
   avg(Salary) as Average,      
   calculated Average - Overall as difference  
from   
   WORK.PILOTS, 
   (select avg(Salary) as Overall from WORK.PILOTS)
group by jobcode
;      


select 
   Jobcode,   
   avg(Salary) as Average,      
   (select avg(Salary) from WORK.PILOTS) as Overall,      
   calculated Average - calculated Overall as Difference  
from WORK.PILOTS
group by 1    
; 






proc sql;
select 
   Jobcode,   
   Average,   
   Average-Overall as Difference
from   
   (select Jobcode, avg(Salary) as Average     
   from WORK.PILOTS 
group by 1), 
   (select avg(Salary) as Overall
   from WORK.PILOTS)    
;  

select 
   Jobcode,   
   avg(Salary) as Average,      
   calculated Average-(select avg(Salary) from WORK.PILOTS)       
      as Difference     
from WORK.PILOTS
group by 1    
;


