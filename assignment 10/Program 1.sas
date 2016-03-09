data chicks;
  input trt block weight;
  cards;
1 1 21.4
1 2 21.2
1 3 20.9
1 4 22.0
1 5 21.9
2 1 20.1
2 2 20.5
2 3 21.0
2 4 20.6
2 5 20.8
3 1 26.3
3 2 27.1
3 3 26.2
3 4 27.0
3 5 26.6
4 1 25.0
4 2 24.4
4 3 24.9
4 4 25.2
4 5 23.9
5 1 26.0
5 2 25.5
5 3 24.9
5 4 25.9
5 5 26.6
6 1 25.8
6 2 26.7
6 3 24.8
6 4 26.3
6 5 25.4
;

proc print data=chicks;

proc glm data=chicks;
  class trt block;
  model weight = trt block;
  means trt / lsd lines;
  contrast 'C1' trt 1 -1 1 -1 1 -1;
  contrast 'C2' trt 1 1 -1 -1 0 0;
  contrast 'C3' trt 1 1 1 1 -2 -2;
  contrast 'C4' trt 1 -1 -1 1 0 0;
  contrast 'C5' trt 1 -1 1 -1 -2 2;


data chicks2;
  set chicks;
  diet = 1;
  if trt in(2,4,6) then diet = 2;
  copper = 1;
  if trt in(3,4) then copper = 2;
  else if trt in(5,6) then copper = 3;

proc print data=chick2;

proc glm data=chicks2;
  class diet copper block;
  model weight = diet|copper block;

data chicks3;
  set chicks2;
  new_weight = weight;
  if block = 1 then new_weight = weight + 2;
  else if block = 2 then new_weight = weight + 3;
  else if block = 3 then new_weight = weight - 9;
  else if block = 4 then new_weight = weight - 4;
  
proc glm data=chicks3;
  class trt block;
  model new_weight = trt block;

run;


