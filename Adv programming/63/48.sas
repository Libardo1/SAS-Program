data WORK.BDAYINFO;   
    infile datalines;   
    input Name $ Birthday : mmddyy10.;   
  datalines;  
  Alan  11/15/1950      
  Barb  08/23/1966      
  Carl  09/01/1963      
  ;    
  run; 
 
  %let Want=23AUG1966;  
  proc print data=WORK.BDAYINFO;
    where Birthday="&Want"d;
  run;
