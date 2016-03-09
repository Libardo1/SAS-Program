options ls=80 ps=50 nodate;
data gylcogen;
    infile "/folders/myfolders/assignment 9/rat.txt" ;
    input prep level y;
    if prep="." THEN DELETE;
 
*proc print data=gylcogen;
proc means data=gylcogen  nway mean std;
   class prep level;
   output out=outmean mean=meany;
proc plot data=outmean;
   plot meany*prep=level;
proc glm data=gylcogen;
   class prep level;
   model y=prep|level;

data orange;
   infile "/folders/myfolders/assignment 9/orange.txt" ;
   input diam calcium PH;
   if diam="." then delete;
   cards;
*proc print data=orange;
proc means data=orange nway;
   class PH calcium;
   output out=out_orange mean=meandiam;
proc plot data=out_orange;
   plot meandiam*PH=calcium;
proc glm data=orange;
   class PH calcium;
   model diam=calcium|PH;
   means PH calcium PH*calcium / lsd lines;
   lsmeans PH*calcium/diff;
   output out=outresid student=exresid predicted=fitted;
proc plot data=outresid;
   plot exresid*fitted;

data strawberry;
   input fertilizer $ spray $ irrigated $ y;
   cards;
summer y yes 25.2
summer y yes 28.8
summer y not 20.7
summer y not 28.0
summer n yes 36.4
summer n yes 34.0
summer n not 30.4
summer n not 27.6
spring y yes 19.2
spring y yes 20.7
spring y not 27.5
spring y not 25.9
spring n yes 27.8
spring n yes 29.3
spring n not 22.8
spring n not 27.0
;
*proc print data=strawberry;
proc means data=strawberry nway mean std;
   class fertilizer spray irrigated;
   output out=out_s mean=out_sy;
proc sort data=out_s
   out=out_ss;
by fertilizer;
proc plot data=out_ss;
   by fertilizer;
   plot out_sy*spray=irrigated;
proc glm data=strawberry;
   class fertilizer spray irrigated;
   model y=fertilizer|spray|irrigated;
   output out=outres student=exresid predicted=fitted;
proc plot data=outres;
   plot exresid*fitted;
 run;
quit;
