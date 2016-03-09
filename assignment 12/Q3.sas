options ls=80 ps=50 nodate;
data plankton;
input depth form $ time $ y;
cards;
29 A I 1.6
29 B I 1.69
29 C I 2.04
31 A I 1.34
31 B I 1.41
31 C I 2.06
29 A II 1.43
29 B II 1.93
29 C II 1.91
31 A II 1.13
31 B II 1.58
31 C II 1.65
29 A III 1.34
29 B III 2.27
29 C III 1.90
31 A III 1.19
31 B III 2.22
31 C III 1.88
29 A IV 0.65
29 B IV 1.59
29 C IV 1.44
31 A IV 0.82
31 B IV 1.74
31 C IV 1.69
;
proc print data=plankton;
proc mixed data=plankton method=type3;
class depth form time;
model y = depth form time form(depth)/residual outp=resid2 outpm=resid2m;
random depth(time);
proc plot data=resid2;
plot studentresid*pred/vref=0 hpos=60 vpos=20;
run;