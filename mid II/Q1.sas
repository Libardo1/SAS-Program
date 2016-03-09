options ls=80 ps=50 nodate;
data fetal;
  input trt $ male $ ratio;
  cards;
II D 7.7
II D 7.7
V A 6.4
V A 6.0
V A 6.0
IV E 7.1
IV E 7.3
I C 11.7
III B 7.1
III B 8.0
IV A 5.7
IV A 5.7
III A 7.0
III A 8.4
III A 7.4
I D 8.1
II B 9.9
III D 5.9
III D 6.2
I B 12.7
I B 12.2
II C 11.2
II C 11.1
III E 5.7
III E 7.1
IV C 10.7
IV C 10.1
IV C 10.1
II A 9.0
II A 9.4
I A 11.2
I A 10.4
V B 9.3
II E 9.3
II E 9.5
V C 7.4
V C 7.1
III C 9.6
III C 10.0
I E 10.1
I E 9.9
IV D 6.2
IV D 5.2
IV D 5.6
IV B 7.1
IV B 7.6
IV B 8.0
V D 3.4
V D 3.3
V D 4.5
V E 5.3
V E 5.3
V E 4.9
;

proc glm data=fetal;
  class trt male;
  model ratio=trt male trt(male);
  test h=trt e=trt(male);
  means trt / lsd lines e=trt(male);
  output out=fetalout p=pred r=resid;
  contrast 'I vs V' trt 1 0 0 0 -1 / e=trt(male);
  contrast 'II vs V' trt 0 1 0 0 -1 / e=trt(male);
  contrast 'III vs IV' trt 0 0 1 -1 0 / e=trt(male);
  contrast 'I vs II' trt 1 -1 0 0 0 / e=trt(male);
  contrast 'I vs III' trt 1 0 -1 0 0 / e=trt(male);
  contrast 'II vs III' trt 0 1 -1 0 0 0 / e=trt(male);
/* proc mixed data=fetal method=type3;
  class trt male;
  model ratio= /cl ;
  random male trt(male);
proc plot data=fetalout;
  plot resid*pred;
*/
run;