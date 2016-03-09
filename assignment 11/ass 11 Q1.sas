options ls=80 ps=50 nodate;
data millet;
  input row col trt $ y;
  cards;
  1 1 B 273
  1 2 E 196
  1 3 A 285
  1 4 C 283
  1 5 D 188
  2 1 D 255
  2 2 A 293
  2 3 E 235
  2 4 B 310
  2 5 C 260
  3 1 E 160
  3 2 B 280
  3 3 C 298
  3 4 D 254
  3 5 A 248
  4 1 A 203
  4 2 C 204
  4 3 D 237
  4 4 E 163
  4 5 B 269
  5 1 C 230
  5 2 D 270
  5 3 B 295
  5 4 A 333
  5 5 E 297
;

proc print data=millet;
proc glm data=millet;
  classes trt row col;
  model y = row col trt;
  means trt / lsd lines;
run;