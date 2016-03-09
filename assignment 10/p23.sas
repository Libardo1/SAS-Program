data beet;
   infile "/folders/myfolders/assignment 10/beet.txt" firstobs=2;
   input y trt row;

proc print data=beet;

proc glm data=beet;
  class trt row;
  model y = trt row;
  means trt / lsd lines;
  contrast 'main D' trt 1 1 -1 -1;
  contrast 'main E' trt 1 -1 1 -1;
  contrast 'DE interaction' trt 1 -1 -1 1;
  output out=beet_out student=exresid predicted=fitted;

proc plot data=beet_out;
  plot exresid*fitted;


data beet2;
  set beet;
  D = 1;
  if trt in(3,4) then D = 2;
  E = 1;
  if trt in(2,4) then E = 2;
 
proc glm data=beet2;
  class D E row;
  model y = D|E row;

data beet3;
  set beet2;
  new_y = y;
  if row = 1 then new_y = y + 1;
  else if row = 2 then new_y = y + 4;
  else if row = 3 then new_y = y + 5;
  else if row = 4 then new_y = y - 3;
  else if row = 5 then new_y = y + 9;
  else if row = 7 then new_y = y + 12;
 
proc print data=beet3;
 
proc glm data=beet3;
  class trt row;
  model new_y = trt row;

run;



