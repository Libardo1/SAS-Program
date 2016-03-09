options ls=80 ps=50 nodate;
data loaves;
   input loaf recipe $ y;
   cards;
   1 A 0.18
   1 A 0.15
   1 A 0.16
   1 B 0.19
   1 B 0.16
   1 B 1.18
   1 C 0.07
   1 C 0.10
   1 C 0.08
   2 A 0.14
   2 A 0.12
   2 A 0.14
   2 B 0.23
   2 B 0.20
   2 B 0.20
   2 C 0.09
   2 C 0.12
   2 C 0.10
;
proc print data=loaves;
proc mixed data=loaves method=type3;
class loaf recipe;
model y=recipe/residual outp=resid outpm=residm;
random loaf(recipe);
lsmeans recipe/diff;
run;  
   
   
   
   
   
   
   
   
   