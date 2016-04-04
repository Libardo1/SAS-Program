data zzz.highway;
	input Steering $ Seatbelt $ Speed $ Status $ Count;
	datalines;
	absent No 0-29 serious 31
	absent No 0-29 not 1419
	absent No 30-49 serious 191
	absent no 30-49 not 2004
	absent no 50+ serious 216
	;
run;

%macro HIGHWAY(Belt=no);      
     proc print data=zzz.highway;  
        where Seatbelt='&Belt';
     run;     
%mend;      
 
%HIGHWAY(Belt=No)   
