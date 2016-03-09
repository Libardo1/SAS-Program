options ls=80 ps=50 nodate;
data insulin;
input day trt $ y;
cards;
1 A 69
1 A 64
1 B 70
1 B 75
1 C 64
1 C 64
1 D 81
1 D 77
2 A 57
2 A 53
2 B 54
2 B 47
2 C 46
2 C 49
2 D 68
2 D 66
3 A 64
3 A 68
3 B 61
3 B 62
3 C 54
3 C 62
3 D 76
3 D 70
;
proc print data=insulin;
proc mixed data=insulin method=type3;
class day trt;
model y = day trt/residual outp=resid1 outpm=resid1m;
random day(trt);
lsmeans trt/diff;
run;